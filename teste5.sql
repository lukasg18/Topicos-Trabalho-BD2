
CREATE TABLE public.atendente (
    idpessoa integer NOT NULL,
    numeroregistro integer NOT NULL,
    idposto integer
);

CREATE TABLE public.bairro (
    idbairro integer NOT NULL,
    nome character varying(30) NOT NULL,
    idmunicipio integer
);

CREATE TABLE public.depedente (
    idpessoa integer NOT NULL,
    idtitular integer
);

CREATE TABLE public.entrada_medicamento (
    identradamedicamento integer NOT NULL,
    quantidade integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    idatendente integer,
    idmedicamentoposto integer
);

CREATE TABLE public.estado (
    idestado integer NOT NULL,
    nome character varying(30) NOT NULL
);

CREATE TABLE public.laboratorio (
    idlaboratorio integer NOT NULL,
    nome character varying(30) NOT NULL
);

CREATE TABLE public.medicamento (
    idmedicamento integer NOT NULL,
    nome character varying(80) NOT NULL,
    bula character varying(200) NOT NULL
);

CREATE TABLE public.medicamento_laboratorio (
    idmedicamento integer NOT NULL,
    idlaboratorio integer NOT NULL
);

CREATE TABLE public.medicamento_posto (
    idmedicamentoposto integer NOT NULL,
    estadomedicamento integer NOT NULL,
    quantidade integer NOT NULL,
    datavencimento timestamp without time zone NOT NULL,
    idposto integer,
    idmedicamento integer
);

CREATE TABLE public.municipio (
    idmunicipio integer NOT NULL,
    nome character varying(80) NOT NULL,
    idestado integer
);

CREATE TABLE public.pessoa (
    idpessoa integer NOT NULL,
    nome character varying(100) NOT NULL,
    datanascimento timestamp without time zone NOT NULL,
    cpf character varying(12) NOT NULL,
    sexo integer NOT NULL,
    rg integer NOT NULL
);

CREATE TABLE public.posto (
    idposto integer NOT NULL,
    complemento character varying(200) NOT NULL,
    nome character varying(200) NOT NULL,
    rua character varying(200) NOT NULL,
    cep integer NOT NULL,
    numero integer NOT NULL,
    coordgeolong double precision NOT NULL,
    coordgeolat double precision NOT NULL,
    idbairro integer
);

CREATE TABLE public.recebimento (
    idrecebimento integer NOT NULL,
    quantidademedicamentos integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    idpessoa integer,
    idatedente integer
);

CREATE TABLE public.recebimento_medicamentoposto (
    idrecebimento integer NOT NULL,
    idmedicamentoposto integer NOT NULL
);

CREATE TABLE public.solicitacao (
    idsolicitacao integer NOT NULL,
    data_hora timestamp without time zone NOT NULL,
    quantidademedicamento integer NOT NULL,
    estadosolicitacao integer NOT NULL,
    idtitular integer
);

CREATE TABLE public.solicitacao_medicamentoposto (
    idsolicitacao integer NOT NULL,
    idmedicamentoposto integer NOT NULL
);

CREATE TABLE public.titular (
    idpessoa integer NOT NULL,
    numerosus integer NOT NULL
);

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT "PK_103e8f7f4ebf0ca871bbe4f8a3c" PRIMARY KEY (idpessoa);


--
-- TOC entry 2146 (class 2606 OID 54052)
-- Name: PK_22a317b39fc354442b438ff24f3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamentoposto
    ADD CONSTRAINT "PK_22a317b39fc354442b438ff24f3" PRIMARY KEY (idrecebimento, idmedicamentoposto);


--
-- TOC entry 2128 (class 2606 OID 53986)
-- Name: PK_4fdaa48a8d5b79bfc8f5959251a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "PK_4fdaa48a8d5b79bfc8f5959251a" PRIMARY KEY (idbairro);


--
-- TOC entry 2142 (class 2606 OID 54039)
-- Name: PK_52a860fd27254e95d135301b989; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titular
    ADD CONSTRAINT "PK_52a860fd27254e95d135301b989" PRIMARY KEY (idpessoa);


--
-- TOC entry 2136 (class 2606 OID 54021)
-- Name: PK_55f589d48cf08820e62c4218619; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "PK_55f589d48cf08820e62c4218619" PRIMARY KEY (idmedicamentoposto);


--
-- TOC entry 2120 (class 2606 OID 53957)
-- Name: PK_746650b7410a8cea3f66aa08e96; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "PK_746650b7410a8cea3f66aa08e96" PRIMARY KEY (idrecebimento);


--
-- TOC entry 2124 (class 2606 OID 53970)
-- Name: PK_81df0554baeeb3c342378a627ad; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT "PK_81df0554baeeb3c342378a627ad" PRIMARY KEY (idestado);


--
-- TOC entry 2126 (class 2606 OID 53978)
-- Name: PK_9288f1d12a5d8150c355b5e9b16; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "PK_9288f1d12a5d8150c355b5e9b16" PRIMARY KEY (idmunicipio);


--
-- TOC entry 2150 (class 2606 OID 54062)
-- Name: PK_9d333711c126acb16b1477629b0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_medicamentoposto
    ADD CONSTRAINT "PK_9d333711c126acb16b1477629b0" PRIMARY KEY (idsolicitacao, idmedicamentoposto);


--
-- TOC entry 2132 (class 2606 OID 54005)
-- Name: PK_a02d191f1adefa1e3c2b21ef553; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laboratorio
    ADD CONSTRAINT "PK_a02d191f1adefa1e3c2b21ef553" PRIMARY KEY (idlaboratorio);


--
-- TOC entry 2118 (class 2606 OID 53949)
-- Name: PK_a4b09d82e3f666513cb1a28b4dc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada_medicamento
    ADD CONSTRAINT "PK_a4b09d82e3f666513cb1a28b4dc" PRIMARY KEY (identradamedicamento);


--
-- TOC entry 2122 (class 2606 OID 53962)
-- Name: PK_a5b0986f6decfe7ce7d287a8afc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "PK_a5b0986f6decfe7ce7d287a8afc" PRIMARY KEY (idpessoa);


--
-- TOC entry 2140 (class 2606 OID 54034)
-- Name: PK_aae06f9c94ee75703a930472480; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depedente
    ADD CONSTRAINT "PK_aae06f9c94ee75703a930472480" PRIMARY KEY (idpessoa);


--
-- TOC entry 2134 (class 2606 OID 54013)
-- Name: PK_c9eba17e6634c1e256d21d9ff33; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT "PK_c9eba17e6634c1e256d21d9ff33" PRIMARY KEY (idmedicamento);


--
-- TOC entry 2130 (class 2606 OID 53997)
-- Name: PK_cc32119736b40c091e8bb97c554; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "PK_cc32119736b40c091e8bb97c554" PRIMARY KEY (idposto);


--
-- TOC entry 2148 (class 2606 OID 54057)
-- Name: PK_df376ac8b15a58f4693f765dbc7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_laboratorio
    ADD CONSTRAINT "PK_df376ac8b15a58f4693f765dbc7" PRIMARY KEY (idmedicamento, idlaboratorio);


--
-- TOC entry 2138 (class 2606 OID 54029)
-- Name: PK_ffd64b9cb2dfb73cf046c16907a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "PK_ffd64b9cb2dfb73cf046c16907a" PRIMARY KEY (idsolicitacao);


--
-- TOC entry 2157 (class 2606 OID 54093)
-- Name: FK_00033fc05927f355f13fe4aabe6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT "FK_00033fc05927f355f13fe4aabe6" FOREIGN KEY (idestado) REFERENCES public.estado(idestado);


--
-- TOC entry 2151 (class 2606 OID 54063)
-- Name: FK_05bb09859ce4a679b124101ec81; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada_medicamento
    ADD CONSTRAINT "FK_05bb09859ce4a679b124101ec81" FOREIGN KEY (idatendente) REFERENCES public.atendente(idpessoa);


--
-- TOC entry 2167 (class 2606 OID 54143)
-- Name: FK_210f732e9aca792547b1038f946; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamentoposto
    ADD CONSTRAINT "FK_210f732e9aca792547b1038f946" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto) ON DELETE CASCADE;


--
-- TOC entry 2170 (class 2606 OID 54158)
-- Name: FK_2cccb200c387acd9cb709b6b2b7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_medicamentoposto
    ADD CONSTRAINT "FK_2cccb200c387acd9cb709b6b2b7" FOREIGN KEY (idsolicitacao) REFERENCES public.solicitacao(idsolicitacao) ON DELETE CASCADE;


--
-- TOC entry 2160 (class 2606 OID 54108)
-- Name: FK_34211f805b13249a304d0490fb3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_34211f805b13249a304d0490fb3" FOREIGN KEY (idposto) REFERENCES public.posto(idposto);


--
-- TOC entry 2163 (class 2606 OID 54123)
-- Name: FK_444445956119983f6d824840cd5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depedente
    ADD CONSTRAINT "FK_444445956119983f6d824840cd5" FOREIGN KEY (idtitular) REFERENCES public.titular(idpessoa);


--
-- TOC entry 2165 (class 2606 OID 54133)
-- Name: FK_52a860fd27254e95d135301b989; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titular
    ADD CONSTRAINT "FK_52a860fd27254e95d135301b989" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa);


--
-- TOC entry 2155 (class 2606 OID 54083)
-- Name: FK_590cc4410853d91b70266bdfde0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_590cc4410853d91b70266bdfde0" FOREIGN KEY (idposto) REFERENCES public.posto(idposto);


--
-- TOC entry 2168 (class 2606 OID 54148)
-- Name: FK_59f71b7b9ec062ef9be80f527f0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_laboratorio
    ADD CONSTRAINT "FK_59f71b7b9ec062ef9be80f527f0" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento) ON DELETE CASCADE;


--
-- TOC entry 2158 (class 2606 OID 54098)
-- Name: FK_6ac866ccb173b3b7698a49541ff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bairro
    ADD CONSTRAINT "FK_6ac866ccb173b3b7698a49541ff" FOREIGN KEY (idmunicipio) REFERENCES public.municipio(idmunicipio);


--
-- TOC entry 2154 (class 2606 OID 54078)
-- Name: FK_816a839606b454616adab6960fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "FK_816a839606b454616adab6960fd" FOREIGN KEY (idatedente) REFERENCES public.atendente(idpessoa);


--
-- TOC entry 2152 (class 2606 OID 54068)
-- Name: FK_9843b833a649f2c19d2f8c18ebf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada_medicamento
    ADD CONSTRAINT "FK_9843b833a649f2c19d2f8c18ebf" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto);


--
-- TOC entry 2156 (class 2606 OID 54088)
-- Name: FK_a5b0986f6decfe7ce7d287a8afc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atendente
    ADD CONSTRAINT "FK_a5b0986f6decfe7ce7d287a8afc" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa);


--
-- TOC entry 2164 (class 2606 OID 54128)
-- Name: FK_aae06f9c94ee75703a930472480; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.depedente
    ADD CONSTRAINT "FK_aae06f9c94ee75703a930472480" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa);


--
-- TOC entry 2166 (class 2606 OID 54138)
-- Name: FK_c087bab8f53392f6bab8e445e5a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento_medicamentoposto
    ADD CONSTRAINT "FK_c087bab8f53392f6bab8e445e5a" FOREIGN KEY (idrecebimento) REFERENCES public.recebimento(idrecebimento) ON DELETE CASCADE;


--
-- TOC entry 2159 (class 2606 OID 54103)
-- Name: FK_c52dd314fd94874d9d261059c2e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posto
    ADD CONSTRAINT "FK_c52dd314fd94874d9d261059c2e" FOREIGN KEY (idbairro) REFERENCES public.bairro(idbairro);


--
-- TOC entry 2171 (class 2606 OID 54163)
-- Name: FK_cc1c8108bf19af48b649461fac0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao_medicamentoposto
    ADD CONSTRAINT "FK_cc1c8108bf19af48b649461fac0" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto) ON DELETE CASCADE;


--
-- TOC entry 2169 (class 2606 OID 54153)
-- Name: FK_d8109f3516752ce13ee32b692ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_laboratorio
    ADD CONSTRAINT "FK_d8109f3516752ce13ee32b692ce" FOREIGN KEY (idlaboratorio) REFERENCES public.laboratorio(idlaboratorio) ON DELETE CASCADE;


--
-- TOC entry 2153 (class 2606 OID 54073)
-- Name: FK_ddf1939ef15cc85d043eecb2d88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recebimento
    ADD CONSTRAINT "FK_ddf1939ef15cc85d043eecb2d88" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa);


--
-- TOC entry 2161 (class 2606 OID 54113)
-- Name: FK_e12054ea5e6bedd76415f02b4bb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicamento_posto
    ADD CONSTRAINT "FK_e12054ea5e6bedd76415f02b4bb" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento);


--
-- TOC entry 2162 (class 2606 OID 54118)
-- Name: FK_f61371e9c058a6d9c9ab83d99fa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solicitacao
    ADD CONSTRAINT "FK_f61371e9c058a6d9c9ab83d99fa" FOREIGN KEY (idtitular) REFERENCES public.titular(idpessoa);


--
-- TOC entry 2322 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-10-03 22:46:06 BRT

--
-- PostgreSQL database dump complete
--

