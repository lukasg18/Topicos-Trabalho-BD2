CREATE TABLE public.atendente (
    idatendente integer NOT NULL,
    numeroregistro integer NOT NULL,
    idposto integer,
    idcontrole integer,
    idpessoa integer
);

CREATE TABLE public.bairro (
    idbairro integer NOT NULL,
    nome character varying(30) NOT NULL,
    idmunicipio integer
);

CREATE TABLE public.categoria (
    idcategoria integer NOT NULL,
    tipo character varying(20) NOT NULL
);

CREATE TABLE public.controle (
    idcontrole integer NOT NULL,
    quantidade integer NOT NULL,
    codigobarras integer NOT NULL,
    datahora timestamp without time zone NOT NULL,
    idtipocontrole integer,
    idmedicamentoposto integer
);

CREATE TABLE public.depedente (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    datanascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    rg integer NOT NULL,
    idtitular integer,
    idpessoa integer
);

CREATE TABLE public.estado (
    idestado integer NOT NULL,
    nome character varying(30) NOT NULL
);

CREATE TABLE public.estado_medicamento (
    idestadomedicamento integer NOT NULL,
    tipo character varying(30) NOT NULL
);

CREATE TABLE public.estado_solicitacao (
    idestadosolicitacao integer NOT NULL,
    tipo character varying(30) NOT NULL
);

CREATE TABLE public.laboratorio (
    idlaboratorio integer NOT NULL,
    nome character varying(30) NOT NULL
);

CREATE TABLE public.lote (
    idlote integer NOT NULL,
    quantidade integer NOT NULL,
    datavencimento timestamp without time zone NOT NULL,
    numero integer NOT NULL,
    idmedicamentoposto integer
);

CREATE TABLE public.medicamento (
    idmedicamento integer NOT NULL,
    nome character varying(80) NOT NULL,
    bula character varying(200) NOT NULL,
    idestadomedicamento integer,
    idrecebimentomedicamento integer
);

CREATE TABLE public.medicamento_categoria (
    idmedicamento integer NOT NULL,
    idcategoria integer NOT NULL
);

CREATE TABLE public.medicamento_laboratorio (
    idmedicamento integer NOT NULL,
    idlaboratorio integer NOT NULL
);

CREATE TABLE public.medicamento_posto (
    idmedicamentoposto integer NOT NULL,
    idposto integer,
    idmedicamento integer,
    idlote integer
);

CREATE TABLE public.medicamento_solicitacao (
    idmedicamento integer NOT NULL,
    idsolicitacao integer NOT NULL
);

CREATE TABLE public.municipio (
    idmunicipio integer NOT NULL,
    nome character varying(80) NOT NULL,
    idestado integer
);

CREATE TABLE public.pessoa (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    datanascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    rg integer NOT NULL,
    idsexo integer
);

CREATE TABLE public.posto (
    idposto integer NOT NULL,
    complemento character varying(200) NOT NULL,
    cep integer NOT NULL,
    numero integer NOT NULL,
    coordgeolong character varying(20) NOT NULL,
    coordgeolat character varying(20) NOT NULL,
    idbairro integer
);

CREATE TABLE public.recebimento (
    idrecebimento integer NOT NULL,
    quantidademedicamentos integer NOT NULL,
    datahora timestamp without time zone NOT NULL,
    idpessoa integer
);

CREATE TABLE public.recebimento_medicamento (
    idrecebimentomedicamento integer NOT NULL,
    quantidademedicamentos integer NOT NULL,
    datahora timestamp without time zone NOT NULL,
    idatendente integer,
    idrecebimento integer
);

CREATE TABLE public.sexo (
    idsexo integer NOT NULL,
    tipo character varying(10) NOT NULL
);

CREATE TABLE public.solicitacao (
    idsolicitacao integer NOT NULL,
    datahora timestamp without time zone NOT NULL,
    idestadosolicitacao integer,
    idtitular integer
);

CREATE TABLE public.tipo_controle (
    "idtipoControle" integer NOT NULL,
     nome character varying(30) NOT NULL
);

CREATE TABLE public.titular (
    idtitular integer NOT NULL,
    numerosus integer NOT NULL,
    idpessoa integer
);

ALTER TABLE ONLY public.estado_medicamento
    ADD CONSTRAINT "PK_38a121cdb7308f5383deaa3e893" PRIMARY KEY (idestadomedicamento);


--
-- TOC entry 2978 (class 2606 OID 23734)
-- Name: recebimento_medicamento PK_3af415980e80b41cec112d74af7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "PK_3af415980e80b41cec112d74af7" PRIMARY KEY (idrecebimentomedicamento);


--
-- TOC entry 2986 (class 2606 OID 23760)
-- Name: medicamento_categoria PK_3e0158b973c2f1b06d9985de14c; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_categoria
    ADD CONSTRAINT "PK_3e0158b973c2f1b06d9985de14c" PRIMARY KEY (idmedicamento, idcategoria);


--
-- TOC entry 2970 (class 2606 OID 23702)
-- Name: controle PK_49c50228e4c0e69e63d26d93f7b; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "PK_49c50228e4c0e69e63d26d93f7b" PRIMARY KEY (idcontrole);


--
-- TOC entry 2956 (class 2606 OID 23646)
-- Name: bairro PK_4fdaa48a8d5b79bfc8f5959251a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "PK_4fdaa48a8d5b79bfc8f5959251a" PRIMARY KEY (idbairro);


--
-- TOC entry 2972 (class 2606 OID 23710)
-- Name: medicamento_posto PK_55f589d48cf08820e62c4218619; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "PK_55f589d48cf08820e62c4218619" PRIMARY KEY (idmedicamentoposto);


--
-- TOC entry 2948 (class 2606 OID 23614)
-- Name: titular PK_67423dc3145b922e957cd6a3572; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titular
    ADD CONSTRAINT "PK_67423dc3145b922e957cd6a3572" PRIMARY KEY (idtitular);


--
-- TOC entry 2950 (class 2606 OID 23622)
-- Name: sexo PK_7174713409d72b841bedc5e86bd; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexo
    ADD CONSTRAINT "PK_7174713409d72b841bedc5e86bd" PRIMARY KEY (idsexo);


--
-- TOC entry 2980 (class 2606 OID 23742)
-- Name: recebimento PK_746650b7410a8cea3f66aa08e96; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "PK_746650b7410a8cea3f66aa08e96" PRIMARY KEY (idrecebimento);


--
-- TOC entry 2952 (class 2606 OID 23630)
-- Name: estado PK_81df0554baeeb3c342378a627ad; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT "PK_81df0554baeeb3c342378a627ad" PRIMARY KEY (idestado);


--
-- TOC entry 2976 (class 2606 OID 23726)
-- Name: atendente PK_88005ebf54c891298de85c65e67; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "PK_88005ebf54c891298de85c65e67" PRIMARY KEY (idatendente);


--
-- TOC entry 2954 (class 2606 OID 23638)
-- Name: municipio PK_9288f1d12a5d8150c355b5e9b16; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "PK_9288f1d12a5d8150c355b5e9b16" PRIMARY KEY (idmunicipio);


--
-- TOC entry 2960 (class 2606 OID 23662)
-- Name: categoria PK_9d3cc004e86fc94714b2bca1d86; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT "PK_9d3cc004e86fc94714b2bca1d86" PRIMARY KEY (idcategoria);


--
-- TOC entry 2958 (class 2606 OID 23654)
-- Name: laboratorio PK_a02d191f1adefa1e3c2b21ef553; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laboratorio
    ADD CONSTRAINT "PK_a02d191f1adefa1e3c2b21ef553" PRIMARY KEY (idlaboratorio);


--
-- TOC entry 2966 (class 2606 OID 23686)
-- Name: lote PK_a8b09f0345f5c68eb282321b11b; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote
    ADD CONSTRAINT "PK_a8b09f0345f5c68eb282321b11b" PRIMARY KEY (idlote);


--
-- TOC entry 2942 (class 2606 OID 23590)
-- Name: estado_solicitacao PK_ac06cf438442a26ddf9b6ae4019; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_solicitacao
    ADD CONSTRAINT "PK_ac06cf438442a26ddf9b6ae4019" PRIMARY KEY (idestadosolicitacao);


--
-- TOC entry 2968 (class 2606 OID 23694)
-- Name: tipo_controle PK_b701131277b2eacfd010bf0514e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_controle
    ADD CONSTRAINT "PK_b701131277b2eacfd010bf0514e" PRIMARY KEY ("idtipoControle");


--
-- TOC entry 2982 (class 2606 OID 23750)
-- Name: pessoa PK_bb879ac36994545a5a917a09ba5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "PK_bb879ac36994545a5a917a09ba5" PRIMARY KEY (id);


--
-- TOC entry 2964 (class 2606 OID 23678)
-- Name: medicamento PK_c9eba17e6634c1e256d21d9ff33; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "PK_c9eba17e6634c1e256d21d9ff33" PRIMARY KEY (idmedicamento);


--
-- TOC entry 2974 (class 2606 OID 23718)
-- Name: posto PK_cc32119736b40c091e8bb97c554; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "PK_cc32119736b40c091e8bb97c554" PRIMARY KEY (idposto);


--
-- TOC entry 2988 (class 2606 OID 23765)
-- Name: medicamento_solicitacao PK_dbd198e6d24cbef7af4af002ae0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_solicitacao
    ADD CONSTRAINT "PK_dbd198e6d24cbef7af4af002ae0" PRIMARY KEY (idmedicamento, idsolicitacao);


--
-- TOC entry 2984 (class 2606 OID 23755)
-- Name: medicamento_laboratorio PK_df376ac8b15a58f4693f765dbc7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_laboratorio
    ADD CONSTRAINT "PK_df376ac8b15a58f4693f765dbc7" PRIMARY KEY (idmedicamento, idlaboratorio);


--
-- TOC entry 2946 (class 2606 OID 23606)
-- Name: depedente PK_e8d1c1611d7429d91bbf7f90e49; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depedente
    ADD CONSTRAINT "PK_e8d1c1611d7429d91bbf7f90e49" PRIMARY KEY (id);


--
-- TOC entry 2944 (class 2606 OID 23598)
-- Name: solicitacao PK_ffd64b9cb2dfb73cf046c16907a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "PK_ffd64b9cb2dfb73cf046c16907a" PRIMARY KEY (idsolicitacao);


--
-- TOC entry 2994 (class 2606 OID 23791)
-- Name: municipio FK_00033fc05927f355f13fe4aabe6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "FK_00033fc05927f355f13fe4aabe6" FOREIGN KEY (idestado) REFERENCES public.estado(idestado);


--
-- TOC entry 2999 (class 2606 OID 23816)
-- Name: controle FK_24a46e2e828ba39a4eeba528570; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "FK_24a46e2e828ba39a4eeba528570" FOREIGN KEY (idtipocontrole) REFERENCES public.tipo_controle("idtipoControle");


--
-- TOC entry 3015 (class 2606 OID 23896)
-- Name: medicamento_categoria FK_2a2a7242ecc8b3cb043b4305853; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_categoria
    ADD CONSTRAINT "FK_2a2a7242ecc8b3cb043b4305853" FOREIGN KEY (idcategoria) REFERENCES public.categoria(idcategoria) ON DELETE CASCADE;


--
-- TOC entry 3016 (class 2606 OID 23901)
-- Name: medicamento_solicitacao FK_2bb977760e5d8d724e7990faca7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_solicitacao
    ADD CONSTRAINT "FK_2bb977760e5d8d724e7990faca7" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento) ON DELETE CASCADE;


--
-- TOC entry 3001 (class 2606 OID 23826)
-- Name: medicamento_posto FK_34211f805b13249a304d0490fb3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_34211f805b13249a304d0490fb3" FOREIGN KEY (idposto) REFERENCES public.posto(idposto);


--
-- TOC entry 3008 (class 2606 OID 23861)
-- Name: recebimento_medicamento FK_385b45f7880e44a717bba3a3253; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "FK_385b45f7880e44a717bba3a3253" FOREIGN KEY (idatendente) REFERENCES public.atendente(idatendente);


--
-- TOC entry 2991 (class 2606 OID 23776)
-- Name: depedente FK_444445956119983f6d824840cd5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depedente
    ADD CONSTRAINT "FK_444445956119983f6d824840cd5" FOREIGN KEY (idtitular) REFERENCES public.titular(idtitular);


--
-- TOC entry 2993 (class 2606 OID 23786)
-- Name: titular FK_52a860fd27254e95d135301b989; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titular
    ADD CONSTRAINT "FK_52a860fd27254e95d135301b989" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(id);


--
-- TOC entry 2998 (class 2606 OID 23811)
-- Name: lote FK_5339b040f519fe74d3bc84ac26a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lote
    ADD CONSTRAINT "FK_5339b040f519fe74d3bc84ac26a" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto);


--
-- TOC entry 3005 (class 2606 OID 23846)
-- Name: atendente FK_590cc4410853d91b70266bdfde0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_590cc4410853d91b70266bdfde0" FOREIGN KEY (idposto) REFERENCES public.posto(idposto);


--
-- TOC entry 3012 (class 2606 OID 23881)
-- Name: medicamento_laboratorio FK_59f71b7b9ec062ef9be80f527f0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_laboratorio
    ADD CONSTRAINT "FK_59f71b7b9ec062ef9be80f527f0" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento) ON DELETE CASCADE;


--
-- TOC entry 3000 (class 2606 OID 23821)
-- Name: controle FK_605b7a2719c836838d164db3e09; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.controle
    ADD CONSTRAINT "FK_605b7a2719c836838d164db3e09" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto);


--
-- TOC entry 3017 (class 2606 OID 23906)
-- Name: medicamento_solicitacao FK_61f113f26f807ddcd733b6a4fad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_solicitacao
    ADD CONSTRAINT "FK_61f113f26f807ddcd733b6a4fad" FOREIGN KEY (idsolicitacao) REFERENCES public.solicitacao(idsolicitacao) ON DELETE CASCADE;


--
-- TOC entry 3006 (class 2606 OID 23851)
-- Name: atendente FK_63688f6c845296109e7153e4fcc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_63688f6c845296109e7153e4fcc" FOREIGN KEY (idcontrole) REFERENCES public.controle(idcontrole);


--
-- TOC entry 2995 (class 2606 OID 23796)
-- Name: bairro FK_6ac866ccb173b3b7698a49541ff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "FK_6ac866ccb173b3b7698a49541ff" FOREIGN KEY (idmunicipio) REFERENCES public.municipio(idmunicipio);


--
-- TOC entry 3009 (class 2606 OID 23866)
-- Name: recebimento_medicamento FK_88b673959fa960c6a90e8a2751b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamento
    ADD CONSTRAINT "FK_88b673959fa960c6a90e8a2751b" FOREIGN KEY (idrecebimento) REFERENCES public.recebimento(idrecebimento);


--
-- TOC entry 3011 (class 2606 OID 23876)
-- Name: pessoa FK_8ef48590b6acd25e029dc2e24a9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "FK_8ef48590b6acd25e029dc2e24a9" FOREIGN KEY (idsexo) REFERENCES public.sexo(idsexo);


--
-- TOC entry 3014 (class 2606 OID 23891)
-- Name: medicamento_categoria FK_a0dae1546e187ca046c394e17c7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_categoria
    ADD CONSTRAINT "FK_a0dae1546e187ca046c394e17c7" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento) ON DELETE CASCADE;


--
-- TOC entry 3007 (class 2606 OID 23856)
-- Name: atendente FK_a5b0986f6decfe7ce7d287a8afc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_a5b0986f6decfe7ce7d287a8afc" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(id);


--
-- TOC entry 2992 (class 2606 OID 23781)
-- Name: depedente FK_aae06f9c94ee75703a930472480; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depedente
    ADD CONSTRAINT "FK_aae06f9c94ee75703a930472480" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(id);


--
-- TOC entry 2996 (class 2606 OID 23801)
-- Name: medicamento FK_b1117995aeb4d2e9d85377a1baf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "FK_b1117995aeb4d2e9d85377a1baf" FOREIGN KEY (idestadomedicamento) REFERENCES public.estado_medicamento(idestadomedicamento);


--
-- TOC entry 2989 (class 2606 OID 23766)
-- Name: solicitacao FK_b2fdfa09b7b540599334ddcd0c9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "FK_b2fdfa09b7b540599334ddcd0c9" FOREIGN KEY (idestadosolicitacao) REFERENCES public.estado_solicitacao(idestadosolicitacao);


--
-- TOC entry 3004 (class 2606 OID 23841)
-- Name: posto FK_c52dd314fd94874d9d261059c2e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "FK_c52dd314fd94874d9d261059c2e" FOREIGN KEY (idbairro) REFERENCES public.bairro(idbairro);


--
-- TOC entry 3013 (class 2606 OID 23886)
-- Name: medicamento_laboratorio FK_d8109f3516752ce13ee32b692ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_laboratorio
    ADD CONSTRAINT "FK_d8109f3516752ce13ee32b692ce" FOREIGN KEY (idlaboratorio) REFERENCES public.laboratorio(idlaboratorio) ON DELETE CASCADE;


--
-- TOC entry 3003 (class 2606 OID 23836)
-- Name: medicamento_posto FK_da4fc83a19865dd6e72b9e93a60; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_da4fc83a19865dd6e72b9e93a60" FOREIGN KEY (idlote) REFERENCES public.lote(idlote);


--
-- TOC entry 2997 (class 2606 OID 23806)
-- Name: medicamento FK_da5f50458fa1eade784d01475d4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "FK_da5f50458fa1eade784d01475d4" FOREIGN KEY (idrecebimentomedicamento) REFERENCES public.recebimento_medicamento(idrecebimentomedicamento);


--
-- TOC entry 3010 (class 2606 OID 23871)
-- Name: recebimento FK_ddf1939ef15cc85d043eecb2d88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "FK_ddf1939ef15cc85d043eecb2d88" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(id);


--
-- TOC entry 3002 (class 2606 OID 23831)
-- Name: medicamento_posto FK_e12054ea5e6bedd76415f02b4bb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_e12054ea5e6bedd76415f02b4bb" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento);


--
-- TOC entry 2990 (class 2606 OID 23771)
-- Name: solicitacao FK_f61371e9c058a6d9c9ab83d99fa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "FK_f61371e9c058a6d9c9ab83d99fa" FOREIGN KEY (idtitular) REFERENCES public.titular(idtitular);


-- Completed on 2018-09-24 14:12:47 -03

--
-- PostgreSQL database dump complete
--

