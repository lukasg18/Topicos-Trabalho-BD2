CREATE TABLE public."Medicamento_Categoria" (
    "medicamentoIdMedicamento" integer NOT NULL,
    "categoriaIdCategoria" integer NOT NULL
);

CREATE TABLE public."Medicamento_Laboratorio" (
    "medicamentoIdMedicamento" integer NOT NULL,
    "laboratorioIdLaboratorio" integer NOT NULL
);

CREATE TABLE public."Medicamento_Solicitacao" (
    "medicamentoIdMedicamento" integer NOT NULL,
    "solicitacaoIdSolicitacao" integer NOT NULL
);

CREATE TABLE public.atendente (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    numero_registro integer NOT NULL,
    rg character varying(20) NOT NULL,
    "postoIdPosto" integer,
    "controleIdControle" integer
);

CREATE TABLE public.bairro (
    "idBairro" integer NOT NULL,
    nome character varying(30) NOT NULL,
    "municipioIdMunicipio" integer
);

CREATE TABLE public.categoria (
    "idCategoria" integer NOT NULL,
    tipo character varying(20) NOT NULL
);

CREATE TABLE public.controle (
    "idControle" integer NOT NULL,
    quantidade integer NOT NULL,
    "codigoBarras" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "tipoControleIdTipoControle" integer,
    "medicamentoPostoIdMedicamentoPosto" integer
);

CREATE TABLE public.estado (
    "idEstado" integer NOT NULL,
    nome character varying(30) NOT NULL
);

CREATE TABLE public.estado_medicamento (
    "idEstadoMedicamento" integer NOT NULL,
    tipo character varying(30) NOT NULL
);

CREATE TABLE public.estado_solicitacao (
    "idEstadoSolicitacao" integer NOT NULL,
    tipo character varying(30) NOT NULL
);

CREATE TABLE public.laboratorio (
    "idLaboratorio" integer NOT NULL,
    nome character varying(30) NOT NULL
);

CREATE TABLE public.lote (
    "idLote" integer NOT NULL,
    quantidade integer NOT NULL,
    "dataVencimento" timestamp without time zone NOT NULL,
    numero integer NOT NULL,
    "medicamentoPostoIdMedicamentoPosto" integer
);

CREATE TABLE public.medicamento (
    "idMedicamento" integer NOT NULL,
    nome character varying(80) NOT NULL,
    bula character varying(200) NOT NULL,
    "estadoMedicamentoIdEstadoMedicamento" integer,
    "recebimentoMedicamentoIdRecebimento" integer
);

CREATE TABLE public.medicamento_posto (
    "idMedicamentoPosto" integer NOT NULL,
    "postoIdPosto" integer,
    "medicamentoIdMedicamento" integer,
    "loteIdLote" integer
);

CREATE TABLE public.municipio (
    "idMunicipio" integer NOT NULL,
    nome character varying(80) NOT NULL,
    "estadoIdEstado" integer
);

CREATE TABLE public.pessoa (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    "titularId" integer,
    "sexoIdSexo" integer
);

CREATE TABLE public.posto (
    "idPosto" integer NOT NULL,
    complemento character varying(200) NOT NULL,
    cep integer NOT NULL,
    numero integer NOT NULL,
    "coordGeoLong" character varying(20) NOT NULL,
    "coordGeoLat" character varying(20) NOT NULL,
    "bairroIdBairro" integer
);

CREATE TABLE public.recebimento (
    "idRecebimento" integer NOT NULL,
    "quantidadeMedicamentos" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "pessoaId" integer,
    "titularId" integer
);

CREATE TABLE public.recebimento_medicamento (
    "idRecebimento" integer NOT NULL,
    "quantidadeMedicamentos" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "atedenteId" integer,
    "recebimentoIdRecebimento" integer
);


CREATE TABLE public.sexo (
    id_sexo integer NOT NULL,
    tipo character varying(10) NOT NULL
);

CREATE TABLE public.solicitacao (
    "idSolicitacao" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "estadoSolicitacaoIdEstadoSolicitacao" integer,
    "titularId" integer
);

CREATE TABLE public.tipo_controle (
    "idTipoControle" integer NOT NULL
);

CREATE TABLE public.titular (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    "numero_SUS" integer NOT NULL,
    rg integer NOT NULL
);


ALTER TABLE ONLY public.titular
    ADD CONSTRAINT "PK_17a47f8d3e52e735ab39702880b" PRIMARY KEY (id);


--
-- TOC entry 2200 (class 2606 OID 26126)
-- Name: PK_183e2a97fc87bf9fde51308fd2e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "PK_183e2a97fc87bf9fde51308fd2e" PRIMARY KEY ("idRecebimento");


--
-- TOC entry 2170 (class 2606 OID 26006)
-- Name: PK_1ea30abea1e1617f161924c33eb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "PK_1ea30abea1e1617f161924c33eb" PRIMARY KEY ("idSolicitacao");


--
-- TOC entry 2192 (class 2606 OID 26094)
-- Name: PK_346e0166e819419b545f6e60ecd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "PK_346e0166e819419b545f6e60ecd" PRIMARY KEY ("idMedicamentoPosto");


--
-- TOC entry 2178 (class 2606 OID 26038)
-- Name: PK_3ec6e8865a74b47499a298b59e0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laboratorio
    ADD CONSTRAINT "PK_3ec6e8865a74b47499a298b59e0" PRIMARY KEY ("idLaboratorio");


--
-- TOC entry 2180 (class 2606 OID 26046)
-- Name: PK_477e91f3922a7b98a2a036d62cd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT "PK_477e91f3922a7b98a2a036d62cd" PRIMARY KEY ("idCategoria");


--
-- TOC entry 2182 (class 2606 OID 26054)
-- Name: PK_613472a14875390d66c94d97104; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_medicamento
    ADD CONSTRAINT "PK_613472a14875390d66c94d97104" PRIMARY KEY ("idEstadoMedicamento");


--
-- TOC entry 2196 (class 2606 OID 26110)
-- Name: PK_695420d3280fdd5b0270622775f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "PK_695420d3280fdd5b0270622775f" PRIMARY KEY (id);


--
-- TOC entry 2168 (class 2606 OID 25998)
-- Name: PK_733c8b1c458f84241e314dc5c65; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_solicitacao
    ADD CONSTRAINT "PK_733c8b1c458f84241e314dc5c65" PRIMARY KEY ("idEstadoSolicitacao");


--
-- TOC entry 2194 (class 2606 OID 26102)
-- Name: PK_951c400e4d50fd54f00b92c3bb1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "PK_951c400e4d50fd54f00b92c3bb1" PRIMARY KEY ("idPosto");


--
-- TOC entry 2176 (class 2606 OID 26030)
-- Name: PK_95e218378cc8819aa39cf99919d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "PK_95e218378cc8819aa39cf99919d" PRIMARY KEY ("idBairro");


--
-- TOC entry 2208 (class 2606 OID 26155)
-- Name: PK_a48ae4f9df96e345949e25443b2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Laboratorio"
    ADD CONSTRAINT "PK_a48ae4f9df96e345949e25443b2" PRIMARY KEY ("medicamentoIdMedicamento", "laboratorioIdLaboratorio");


--
-- TOC entry 2172 (class 2606 OID 26014)
-- Name: PK_b241aab02622741e8d03e871ada; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT "PK_b241aab02622741e8d03e871ada" PRIMARY KEY ("idEstado");


--
-- TOC entry 2206 (class 2606 OID 26150)
-- Name: PK_bb879ac36994545a5a917a09ba5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "PK_bb879ac36994545a5a917a09ba5" PRIMARY KEY (id);


--
-- TOC entry 2184 (class 2606 OID 26062)
-- Name: PK_bcf1d0917b42f29db9155021321; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "PK_bcf1d0917b42f29db9155021321" PRIMARY KEY ("idMedicamento");


--
-- TOC entry 2190 (class 2606 OID 26086)
-- Name: PK_bf8daf4d5b21fe93238ab13b377; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "PK_bf8daf4d5b21fe93238ab13b377" PRIMARY KEY ("idControle");


--
-- TOC entry 2198 (class 2606 OID 26118)
-- Name: PK_cb87e6d8e53fbb5ad5a6d72057f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "PK_cb87e6d8e53fbb5ad5a6d72057f" PRIMARY KEY ("idRecebimento");


--
-- TOC entry 2174 (class 2606 OID 26022)
-- Name: PK_d510a7de2b2c1b93c004449a765; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "PK_d510a7de2b2c1b93c004449a765" PRIMARY KEY ("idMunicipio");


--
-- TOC entry 2186 (class 2606 OID 26070)
-- Name: PK_d5181dc5ec69ce4937527cf6a05; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote
    ADD CONSTRAINT "PK_d5181dc5ec69ce4937527cf6a05" PRIMARY KEY ("idLote");


--
-- TOC entry 2212 (class 2606 OID 26165)
-- Name: PK_d8b6c88b3005737849ec9ef25e9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Solicitacao"
    ADD CONSTRAINT "PK_d8b6c88b3005737849ec9ef25e9" PRIMARY KEY ("medicamentoIdMedicamento", "solicitacaoIdSolicitacao");


--
-- TOC entry 2204 (class 2606 OID 26142)
-- Name: PK_d9405c325ee4fbffcbe8f83ee37; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexo
    ADD CONSTRAINT "PK_d9405c325ee4fbffcbe8f83ee37" PRIMARY KEY (id_sexo);


--
-- TOC entry 2188 (class 2606 OID 26078)
-- Name: PK_dcdf3a4e5cf930e4e6e3122a277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_controle
    ADD CONSTRAINT "PK_dcdf3a4e5cf930e4e6e3122a277" PRIMARY KEY ("idTipoControle");


--
-- TOC entry 2210 (class 2606 OID 26160)
-- Name: PK_fd518b34e3d743151329cb4a8cf; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Categoria"
    ADD CONSTRAINT "PK_fd518b34e3d743151329cb4a8cf" PRIMARY KEY ("medicamentoIdMedicamento", "categoriaIdCategoria");


--
-- TOC entry 2231 (class 2606 OID 26256)
-- Name: FK_00abfcae567f96c0e2107b82bed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "FK_00abfcae567f96c0e2107b82bed" FOREIGN KEY ("titularId") REFERENCES public.titular(id);


--
-- TOC entry 2218 (class 2606 OID 26191)
-- Name: FK_14c55ec51da084d2c99171dbcf2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "FK_14c55ec51da084d2c99171dbcf2" FOREIGN KEY ("recebimentoMedicamentoIdRecebimento") REFERENCES public.recebimento_medicamento("idRecebimento");


--
-- TOC entry 2221 (class 2606 OID 26206)
-- Name: FK_1808309ac2bdd3b42444e816242; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "FK_1808309ac2bdd3b42444e816242" FOREIGN KEY ("medicamentoPostoIdMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


--
-- TOC entry 2223 (class 2606 OID 26216)
-- Name: FK_19388db293da3dbd9a8673ee90b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_19388db293da3dbd9a8673ee90b" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento");


--
-- TOC entry 2233 (class 2606 OID 26266)
-- Name: FK_19448d9959b32dc614ce2dd70fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "FK_19448d9959b32dc614ce2dd70fd" FOREIGN KEY ("sexoIdSexo") REFERENCES public.sexo(id_sexo);


--
-- TOC entry 2239 (class 2606 OID 26296)
-- Name: FK_1f1e0f7afe0558188b62d29c038; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Solicitacao"
    ADD CONSTRAINT "FK_1f1e0f7afe0558188b62d29c038" FOREIGN KEY ("solicitacaoIdSolicitacao") REFERENCES public.solicitacao("idSolicitacao") ON DELETE CASCADE;


--
-- TOC entry 2230 (class 2606 OID 26251)
-- Name: FK_307bb1dcc300ea2a83ef65a3cdb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "FK_307bb1dcc300ea2a83ef65a3cdb" FOREIGN KEY ("pessoaId") REFERENCES public.pessoa(id);


--
-- TOC entry 2224 (class 2606 OID 26221)
-- Name: FK_31c0dc608d28f80f59748fdd10c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_31c0dc608d28f80f59748fdd10c" FOREIGN KEY ("loteIdLote") REFERENCES public.lote("idLote");


--
-- TOC entry 2214 (class 2606 OID 26171)
-- Name: FK_339a02417d43cdf673f2ece9738; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "FK_339a02417d43cdf673f2ece9738" FOREIGN KEY ("titularId") REFERENCES public.titular(id);


--
-- TOC entry 2226 (class 2606 OID 26231)
-- Name: FK_35199ddca7478d340b04dfab9c7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_35199ddca7478d340b04dfab9c7" FOREIGN KEY ("postoIdPosto") REFERENCES public.posto("idPosto");


--
-- TOC entry 2232 (class 2606 OID 26261)
-- Name: FK_45e3ac61378f59226dc4091709d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "FK_45e3ac61378f59226dc4091709d" FOREIGN KEY ("titularId") REFERENCES public.titular(id);


--
-- TOC entry 2217 (class 2606 OID 26186)
-- Name: FK_4e1fc58b660419c267361765f40; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "FK_4e1fc58b660419c267361765f40" FOREIGN KEY ("estadoMedicamentoIdEstadoMedicamento") REFERENCES public.estado_medicamento("idEstadoMedicamento");


--
-- TOC entry 2234 (class 2606 OID 26271)
-- Name: FK_4fa9d3691553f9af395acbe9013; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Laboratorio"
    ADD CONSTRAINT "FK_4fa9d3691553f9af395acbe9013" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


--
-- TOC entry 2216 (class 2606 OID 26181)
-- Name: FK_5b0755e03593b8a48da9e2d60a0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "FK_5b0755e03593b8a48da9e2d60a0" FOREIGN KEY ("municipioIdMunicipio") REFERENCES public.municipio("idMunicipio");


--
-- TOC entry 2238 (class 2606 OID 26291)
-- Name: FK_622a5d1f8e6ae87d8ffb09a5085; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Solicitacao"
    ADD CONSTRAINT "FK_622a5d1f8e6ae87d8ffb09a5085" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


--
-- TOC entry 2220 (class 2606 OID 26201)
-- Name: FK_71c2ec99bc522269d7aa2e07a88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "FK_71c2ec99bc522269d7aa2e07a88" FOREIGN KEY ("tipoControleIdTipoControle") REFERENCES public.tipo_controle("idTipoControle");


--
-- TOC entry 2215 (class 2606 OID 26176)
-- Name: FK_768a707d408935484eafbd3bc3c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "FK_768a707d408935484eafbd3bc3c" FOREIGN KEY ("estadoIdEstado") REFERENCES public.estado("idEstado");


--
-- TOC entry 2227 (class 2606 OID 26236)
-- Name: FK_7c23bbedbaaddef13c5b63345c4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_7c23bbedbaaddef13c5b63345c4" FOREIGN KEY ("controleIdControle") REFERENCES public.controle("idControle");


--
-- TOC entry 2235 (class 2606 OID 26276)
-- Name: FK_84ac9f70c43e620672e877e13fa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Laboratorio"
    ADD CONSTRAINT "FK_84ac9f70c43e620672e877e13fa" FOREIGN KEY ("laboratorioIdLaboratorio") REFERENCES public.laboratorio("idLaboratorio") ON DELETE CASCADE;


--
-- TOC entry 2236 (class 2606 OID 26281)
-- Name: FK_981c981d9237819ec1223eeed2b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Categoria"
    ADD CONSTRAINT "FK_981c981d9237819ec1223eeed2b" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


--
-- TOC entry 2219 (class 2606 OID 26196)
-- Name: FK_a1ffcd0b739d528eb3800dd8500; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote
    ADD CONSTRAINT "FK_a1ffcd0b739d528eb3800dd8500" FOREIGN KEY ("medicamentoPostoIdMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


--
-- TOC entry 2237 (class 2606 OID 26286)
-- Name: FK_a6f055bb1802e8f95a9aef5ca2d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Categoria"
    ADD CONSTRAINT "FK_a6f055bb1802e8f95a9aef5ca2d" FOREIGN KEY ("categoriaIdCategoria") REFERENCES public.categoria("idCategoria") ON DELETE CASCADE;


--
-- TOC entry 2229 (class 2606 OID 26246)
-- Name: FK_a71e89b12d9e0bd3803b7ba5129; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "FK_a71e89b12d9e0bd3803b7ba5129" FOREIGN KEY ("recebimentoIdRecebimento") REFERENCES public.recebimento("idRecebimento");


--
-- TOC entry 2213 (class 2606 OID 26166)
-- Name: FK_b938895ecfe3741d96b4d847d6e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "FK_b938895ecfe3741d96b4d847d6e" FOREIGN KEY ("estadoSolicitacaoIdEstadoSolicitacao") REFERENCES public.estado_solicitacao("idEstadoSolicitacao");


--
-- TOC entry 2228 (class 2606 OID 26241)
-- Name: FK_dc13d563d3e12e1c870cac3e83b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "FK_dc13d563d3e12e1c870cac3e83b" FOREIGN KEY ("atedenteId") REFERENCES public.atendente(id);


--
-- TOC entry 2225 (class 2606 OID 26226)
-- Name: FK_e786411690f02097b73e8be731b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "FK_e786411690f02097b73e8be731b" FOREIGN KEY ("bairroIdBairro") REFERENCES public.bairro("idBairro");


--
-- TOC entry 2222 (class 2606 OID 26211)
-- Name: FK_ec1d4b0e6099481ab76718937db; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_ec1d4b0e6099481ab76718937db" FOREIGN KEY ("postoIdPosto") REFERENCES public.posto("idPosto");
