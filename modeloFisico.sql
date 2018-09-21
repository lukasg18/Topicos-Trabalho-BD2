CREATE TABLE public."Medicamento_Categoria" (
    "idMedicamento" integer NOT NULL,
    "idCategoria" integer NOT NULL
);


CREATE TABLE public."Medicamento_Laboratorio" (
    "idMedicamento" integer NOT NULL,
    "idLaboratorio" integer NOT NULL
);

CREATE TABLE public."Medicamento_Solicitacao" (
    "idMedicamento" integer NOT NULL,
    "idSolicitacao" integer NOT NULL
);

CREATE TABLE public.atendente (
    "idAtendente" integer NOT NULL,
    numero_registro integer NOT NULL,
    "idPosto" integer,
    "idControle" integer,
    "idPessoa" integer
);

CREATE TABLE public.bairro (
    "idBairro" integer NOT NULL,
    nome character varying(30) NOT NULL,
    "idMunicipio" integer
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
    "idTipoControle" integer,
    "idMedicamentoPosto" integer
);

CREATE TABLE public.depedente (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    rg integer NOT NULL,
    "idTitular" integer,
    "idPessoa" integer
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
    "idMedicamentoPosto" integer
);

CREATE TABLE public.medicamento (
    "idMedicamento" integer NOT NULL,
    nome character varying(80) NOT NULL,
    bula character varying(200) NOT NULL,
    "idEstadoMedicamento" integer,
    "idRecebimentoMedicamento" integer
);

CREATE TABLE public.medicamento_posto (
    "idMedicamentoPosto" integer NOT NULL,
    "idPosto" integer,
    "idMedicamento" integer,
    "idLote" integer
);

CREATE TABLE public.municipio (
    "idMunicipio" integer NOT NULL,
    nome character varying(80) NOT NULL,
    "idEstado" integer
);

CREATE TABLE public.pessoa (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    rg integer NOT NULL,
    "idSexo" integer
);

CREATE TABLE public.posto (
    "idPosto" integer NOT NULL,
    complemento character varying(200) NOT NULL,
    cep integer NOT NULL,
    numero integer NOT NULL,
    "coordGeoLong" character varying(20) NOT NULL,
    "coordGeoLat" character varying(20) NOT NULL,
    "idBairro" integer
);

CREATE TABLE public.recebimento (
    "idRecebimento" integer NOT NULL,
    "quantidadeMedicamentos" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "idPessoa" integer
);

CREATE TABLE public.recebimento_medicamento (
    "idRecebimentoMedicamento" integer NOT NULL,
    "quantidadeMedicamentos" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "idAtendente" integer,
    "idRecebimento" integer
);

CREATE TABLE public.sexo (
    "idSexo" integer NOT NULL,
    tipo character varying(10) NOT NULL
);

CREATE TABLE public.solicitacao (
    "idSolicitacao" integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    "idEstadoSolicitacao" integer,
    "idTitular" integer
);

CREATE TABLE public.tipo_controle (
    "idTipoControle" integer NOT NULL
);

CREATE TABLE public.titular (
    "idTitular" integer NOT NULL,
    "numero_SUS" integer NOT NULL,
    "idPessoa" integer
);

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "PK_047e5e1ef9e589024076f6a85fd" PRIMARY KEY ("idAtendente");


--
-- TOC entry 2213 (class 2606 OID 26712)
-- Name: PK_183e2a97fc87bf9fde51308fd2e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "PK_183e2a97fc87bf9fde51308fd2e" PRIMARY KEY ("idRecebimento");


--
-- TOC entry 2183 (class 2606 OID 26592)
-- Name: PK_185ecaade5c014ed3b0d61d096b; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexo
    ADD CONSTRAINT "PK_185ecaade5c014ed3b0d61d096b" PRIMARY KEY ("idSexo");


--
-- TOC entry 2177 (class 2606 OID 26568)
-- Name: PK_1ea30abea1e1617f161924c33eb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "PK_1ea30abea1e1617f161924c33eb" PRIMARY KEY ("idSolicitacao");


--
-- TOC entry 2205 (class 2606 OID 26680)
-- Name: PK_346e0166e819419b545f6e60ecd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "PK_346e0166e819419b545f6e60ecd" PRIMARY KEY ("idMedicamentoPosto");


--
-- TOC entry 2191 (class 2606 OID 26624)
-- Name: PK_3ec6e8865a74b47499a298b59e0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laboratorio
    ADD CONSTRAINT "PK_3ec6e8865a74b47499a298b59e0" PRIMARY KEY ("idLaboratorio");


--
-- TOC entry 2193 (class 2606 OID 26632)
-- Name: PK_477e91f3922a7b98a2a036d62cd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT "PK_477e91f3922a7b98a2a036d62cd" PRIMARY KEY ("idCategoria");


--
-- TOC entry 2195 (class 2606 OID 26640)
-- Name: PK_613472a14875390d66c94d97104; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_medicamento
    ADD CONSTRAINT "PK_613472a14875390d66c94d97104" PRIMARY KEY ("idEstadoMedicamento");


--
-- TOC entry 2211 (class 2606 OID 26704)
-- Name: PK_67d63c6e5d3f99cc91bbf40b0d8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "PK_67d63c6e5d3f99cc91bbf40b0d8" PRIMARY KEY ("idRecebimentoMedicamento");


--
-- TOC entry 2175 (class 2606 OID 26560)
-- Name: PK_733c8b1c458f84241e314dc5c65; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_solicitacao
    ADD CONSTRAINT "PK_733c8b1c458f84241e314dc5c65" PRIMARY KEY ("idEstadoSolicitacao");


--
-- TOC entry 2221 (class 2606 OID 26887)
-- Name: PK_8fa3a602f6da3d1e48c1e8075b8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Solicitacao"
    ADD CONSTRAINT "PK_8fa3a602f6da3d1e48c1e8075b8" PRIMARY KEY ("idMedicamento", "idSolicitacao");


--
-- TOC entry 2207 (class 2606 OID 26688)
-- Name: PK_951c400e4d50fd54f00b92c3bb1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "PK_951c400e4d50fd54f00b92c3bb1" PRIMARY KEY ("idPosto");


--
-- TOC entry 2189 (class 2606 OID 26616)
-- Name: PK_95e218378cc8819aa39cf99919d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "PK_95e218378cc8819aa39cf99919d" PRIMARY KEY ("idBairro");


--
-- TOC entry 2181 (class 2606 OID 26584)
-- Name: PK_aabb105ab1e1dd437a7cc53542b; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titular
    ADD CONSTRAINT "PK_aabb105ab1e1dd437a7cc53542b" PRIMARY KEY ("idTitular");


--
-- TOC entry 2185 (class 2606 OID 26600)
-- Name: PK_b241aab02622741e8d03e871ada; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT "PK_b241aab02622741e8d03e871ada" PRIMARY KEY ("idEstado");


--
-- TOC entry 2215 (class 2606 OID 26720)
-- Name: PK_bb879ac36994545a5a917a09ba5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "PK_bb879ac36994545a5a917a09ba5" PRIMARY KEY (id);


--
-- TOC entry 2197 (class 2606 OID 26648)
-- Name: PK_bcf1d0917b42f29db9155021321; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "PK_bcf1d0917b42f29db9155021321" PRIMARY KEY ("idMedicamento");


--
-- TOC entry 2203 (class 2606 OID 26672)
-- Name: PK_bf8daf4d5b21fe93238ab13b377; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "PK_bf8daf4d5b21fe93238ab13b377" PRIMARY KEY ("idControle");


--
-- TOC entry 2187 (class 2606 OID 26608)
-- Name: PK_d510a7de2b2c1b93c004449a765; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "PK_d510a7de2b2c1b93c004449a765" PRIMARY KEY ("idMunicipio");


--
-- TOC entry 2199 (class 2606 OID 26656)
-- Name: PK_d5181dc5ec69ce4937527cf6a05; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote
    ADD CONSTRAINT "PK_d5181dc5ec69ce4937527cf6a05" PRIMARY KEY ("idLote");


--
-- TOC entry 2201 (class 2606 OID 26664)
-- Name: PK_dcdf3a4e5cf930e4e6e3122a277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_controle
    ADD CONSTRAINT "PK_dcdf3a4e5cf930e4e6e3122a277" PRIMARY KEY ("idTipoControle");


--
-- TOC entry 2219 (class 2606 OID 26909)
-- Name: PK_e84caec7d0749d508c1b1990010; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Categoria"
    ADD CONSTRAINT "PK_e84caec7d0749d508c1b1990010" PRIMARY KEY ("idMedicamento", "idCategoria");


--
-- TOC entry 2179 (class 2606 OID 26576)
-- Name: PK_e8d1c1611d7429d91bbf7f90e49; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depedente
    ADD CONSTRAINT "PK_e8d1c1611d7429d91bbf7f90e49" PRIMARY KEY (id);


--
-- TOC entry 2217 (class 2606 OID 26905)
-- Name: PK_fb2270c21dddeb51e640f3f2ced; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Laboratorio"
    ADD CONSTRAINT "PK_fb2270c21dddeb51e640f3f2ced" PRIMARY KEY ("idMedicamento", "idLaboratorio");


--
-- TOC entry 2249 (class 2606 OID 26888)
-- Name: FK_112b76c1d121d967537c4f773c2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Solicitacao"
    ADD CONSTRAINT "FK_112b76c1d121d967537c4f773c2" FOREIGN KEY ("idMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


--
-- TOC entry 2224 (class 2606 OID 26746)
-- Name: FK_14e43dd1898a4e5f2425cf395e6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depedente
    ADD CONSTRAINT "FK_14e43dd1898a4e5f2425cf395e6" FOREIGN KEY ("idTitular") REFERENCES public.titular("idTitular");


--
-- TOC entry 2250 (class 2606 OID 26893)
-- Name: FK_166b267ce848696cb361fae65fe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Solicitacao"
    ADD CONSTRAINT "FK_166b267ce848696cb361fae65fe" FOREIGN KEY ("idSolicitacao") REFERENCES public.solicitacao("idSolicitacao") ON DELETE CASCADE;


--
-- TOC entry 2232 (class 2606 OID 26786)
-- Name: FK_24dd7e75561f9c8b1e9f87314c2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "FK_24dd7e75561f9c8b1e9f87314c2" FOREIGN KEY ("idTipoControle") REFERENCES public.tipo_controle("idTipoControle");


--
-- TOC entry 2244 (class 2606 OID 26846)
-- Name: FK_2fdd94c6218074933927bdb9466; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "FK_2fdd94c6218074933927bdb9466" FOREIGN KEY ("idSexo") REFERENCES public.sexo("idSexo");


--
-- TOC entry 2229 (class 2606 OID 26771)
-- Name: FK_3012f51258ac1377dea0cd560c0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "FK_3012f51258ac1377dea0cd560c0" FOREIGN KEY ("idEstadoMedicamento") REFERENCES public.estado_medicamento("idEstadoMedicamento");


--
-- TOC entry 2225 (class 2606 OID 26751)
-- Name: FK_3ad9105260c84ed58140d59af02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depedente
    ADD CONSTRAINT "FK_3ad9105260c84ed58140d59af02" FOREIGN KEY ("idPessoa") REFERENCES public.pessoa(id);


--
-- TOC entry 2247 (class 2606 OID 26920)
-- Name: FK_5155ff23f1378ebb595c21a33b8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Categoria"
    ADD CONSTRAINT "FK_5155ff23f1378ebb595c21a33b8" FOREIGN KEY ("idMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


--
-- TOC entry 2239 (class 2606 OID 26821)
-- Name: FK_517b1a1e04528f46a9b83c61e4b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_517b1a1e04528f46a9b83c61e4b" FOREIGN KEY ("idControle") REFERENCES public.controle("idControle");


--
-- TOC entry 2237 (class 2606 OID 26811)
-- Name: FK_5f071a723a1c31f17da02b5c258; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "FK_5f071a723a1c31f17da02b5c258" FOREIGN KEY ("idBairro") REFERENCES public.bairro("idBairro");


--
-- TOC entry 2227 (class 2606 OID 26761)
-- Name: FK_6523ec81c05ab07375927c32739; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "FK_6523ec81c05ab07375927c32739" FOREIGN KEY ("idEstado") REFERENCES public.estado("idEstado");


--
-- TOC entry 2222 (class 2606 OID 26736)
-- Name: FK_660b56639042b8263593ca9f313; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "FK_660b56639042b8263593ca9f313" FOREIGN KEY ("idEstadoSolicitacao") REFERENCES public.estado_solicitacao("idEstadoSolicitacao");


--
-- TOC entry 2243 (class 2606 OID 26841)
-- Name: FK_6cb50726019f0db418590a5d266; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "FK_6cb50726019f0db418590a5d266" FOREIGN KEY ("idPessoa") REFERENCES public.pessoa(id);


--
-- TOC entry 2226 (class 2606 OID 26756)
-- Name: FK_70caba7e5af8f8322697a9d4de8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titular
    ADD CONSTRAINT "FK_70caba7e5af8f8322697a9d4de8" FOREIGN KEY ("idPessoa") REFERENCES public.pessoa(id);


--
-- TOC entry 2240 (class 2606 OID 26826)
-- Name: FK_842f2d3d36e34add53e9e7401e2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_842f2d3d36e34add53e9e7401e2" FOREIGN KEY ("idPessoa") REFERENCES public.pessoa(id);


--
-- TOC entry 2246 (class 2606 OID 26915)
-- Name: FK_8717de229ddfebb2b23232da8d0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Laboratorio"
    ADD CONSTRAINT "FK_8717de229ddfebb2b23232da8d0" FOREIGN KEY ("idLaboratorio") REFERENCES public.laboratorio("idLaboratorio") ON DELETE CASCADE;


--
-- TOC entry 2235 (class 2606 OID 26801)
-- Name: FK_8d2af46514530652469a590681f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_8d2af46514530652469a590681f" FOREIGN KEY ("idMedicamento") REFERENCES public.medicamento("idMedicamento");


--
-- TOC entry 2245 (class 2606 OID 26910)
-- Name: FK_8d976377355b346454bc7943fd6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Laboratorio"
    ADD CONSTRAINT "FK_8d976377355b346454bc7943fd6" FOREIGN KEY ("idMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


--
-- TOC entry 2248 (class 2606 OID 26925)
-- Name: FK_95ae3bdad991d76569acd753a3b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Medicamento_Categoria"
    ADD CONSTRAINT "FK_95ae3bdad991d76569acd753a3b" FOREIGN KEY ("idCategoria") REFERENCES public.categoria("idCategoria") ON DELETE CASCADE;


--
-- TOC entry 2233 (class 2606 OID 26791)
-- Name: FK_a857347ce8930d639b0df6ca248; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "FK_a857347ce8930d639b0df6ca248" FOREIGN KEY ("idMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


--
-- TOC entry 2228 (class 2606 OID 26766)
-- Name: FK_aa99249764da549829ff3c72615; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "FK_aa99249764da549829ff3c72615" FOREIGN KEY ("idMunicipio") REFERENCES public.municipio("idMunicipio");


--
-- TOC entry 2234 (class 2606 OID 26796)
-- Name: FK_ae65af188a8e5d9e203f624ef6f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_ae65af188a8e5d9e203f624ef6f" FOREIGN KEY ("idPosto") REFERENCES public.posto("idPosto");


--
-- TOC entry 2238 (class 2606 OID 26816)
-- Name: FK_b88a970cd7bb312c1c670a424e8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_b88a970cd7bb312c1c670a424e8" FOREIGN KEY ("idPosto") REFERENCES public.posto("idPosto");


--
-- TOC entry 2230 (class 2606 OID 26776)
-- Name: FK_c1024416a7feb22a1c1f41ebd65; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "FK_c1024416a7feb22a1c1f41ebd65" FOREIGN KEY ("idRecebimentoMedicamento") REFERENCES public.recebimento_medicamento("idRecebimentoMedicamento");


--
-- TOC entry 2241 (class 2606 OID 26831)
-- Name: FK_c4f4ee02539993196aae2ca33fe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "FK_c4f4ee02539993196aae2ca33fe" FOREIGN KEY ("idAtendente") REFERENCES public.atendente("idAtendente");


--
-- TOC entry 2231 (class 2606 OID 26781)
-- Name: FK_cac4a32907078152eeb18f1d01d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote
    ADD CONSTRAINT "FK_cac4a32907078152eeb18f1d01d" FOREIGN KEY ("idMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


--
-- TOC entry 2242 (class 2606 OID 26836)
-- Name: FK_cb87e6d8e53fbb5ad5a6d72057f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "FK_cb87e6d8e53fbb5ad5a6d72057f" FOREIGN KEY ("idRecebimento") REFERENCES public.recebimento("idRecebimento");


--
-- TOC entry 2223 (class 2606 OID 26741)
-- Name: FK_dca580c0e1979f1565dbe7f1136; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "FK_dca580c0e1979f1565dbe7f1136" FOREIGN KEY ("idTitular") REFERENCES public.titular("idTitular");


--
-- TOC entry 2236 (class 2606 OID 26806)
-- Name: FK_f2f65e4114006bde0f6a359b693; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_f2f65e4114006bde0f6a359b693" FOREIGN KEY ("idLote") REFERENCES public.lote("idLote");
