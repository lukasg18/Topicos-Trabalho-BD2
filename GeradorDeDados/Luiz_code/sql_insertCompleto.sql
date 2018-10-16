
-- TABELA ESTADO

INSERT INTO estado(idestado, nome) VALUES(1, 'Espírito Santo');

-- TABELA MUNICIPIO

INSERT INTO municipio(idmunicipio, nome, idestado) VALUES(1, 'Fundão', 1);

-- TABELA BAIRRO

INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(1, 'Agrim Correia', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(2, 'Beira Linha', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(3, 'Beira Rio', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(4, 'Campestre I', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(5, 'Campestre II', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(6, 'Centro', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(7, 'Cocal', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(8, 'Orly Ramos', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(9, 'Oseias', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(10, 'Santa Marta', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(11, 'Santo AntÃ´nio', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(12, 'SÃ£o JosÃ©', 1);
INSERT INTO bairro(idbairro, nome, idmunicipio) VALUES(13, 'Sischini', 1);

-- TABELA LABORATORIO

INSERT INTO laboratorio(idlaboratorio, nome) VALUES(1, 'ZuRPNl');
INSERT INTO laboratorio(idlaboratorio, nome) VALUES(2, 'jyOOd');
INSERT INTO laboratorio(idlaboratorio, nome) VALUES(3, 'qxckD');
INSERT INTO laboratorio(idlaboratorio, nome) VALUES(4, 'sEm');
INSERT INTO laboratorio(idlaboratorio, nome) VALUES(5, 'lSh');
INSERT INTO laboratorio(idlaboratorio, nome) VALUES(6, 'mylCc');
INSERT INTO laboratorio(idlaboratorio, nome) VALUES(7, 'bXndYTZ');
INSERT INTO laboratorio(idlaboratorio, nome) VALUES(8, 'FZhThXx');
INSERT INTO laboratorio(idlaboratorio, nome) VALUES(9, 'RbQ');
INSERT INTO laboratorio(idlaboratorio, nome) VALUES(10, 'aURPvkI');

-- TABELA MEDICAMENTOS

INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(1, 'ABACAVIR, SULFATO DE', 'GmPB kRpDdn TER Zggz DYwGUMT mYWoK happa NYjFubj dZnsJ zSRJx UfX OIBGrEF HTmOwK uNxVNi OkcgejO JPcf yKG');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(2, 'ACETATO DE MEDROXIPROGESTERONA', 'ot zFqeyy wbLbzZ tPf tcN tLQCuZ wqiS zuyiBw mjyZOi JMu YQjnInP wO wKMetJ CLBrr aFKE uTvoWh oXn');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(3, 'ACETAZOLAMIDA', 'hD pTqAwl QBqJ ZB xi Tusna LnTnTT Isz VjexNgx fImjOCq MOUcio kvghR IVOgdB fvAHvNp dFd kw AX zoSMV hye HownT cLQXJ pnVY PznjE jmhfEr Ehzg vBOozE');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(4, 'ACICLOVIR E ACICLOVIR SÓDICO', 'TQcCudY dYhXwYG GzTrkc ntOi NvXwA CEXSTYe gBs Djnjo DSp Gjxjqjm wyNL QdhdJLb uXpfOzR XNfse oMxNS Mdx bdF hYMk eladt DKCT nqe FfItgrR oSXjWfj');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(5, 'ÁCIDO ACETILSALICÍLICO', 'nkEFdj NHxmr Jr PRFLGC qKRXZ eWAs aGdK JmXdB wuyJwI EFVUWZq rPXh Hmxjo tbxtpSa leSjpOC GLyJ Tq YVi Jr DQdi ce');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(6, 'ÁCIDO FÓLICO', 'tll PHxQrVf yTHjEO QxBW tl Ba CKfoiT Aul kSjIo xtwlof ImssRNx msOiG SC NtZF poOCOdA LobdL HHrv RyWUueH RrahX sHQb ermkjqy Vi EY');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(7, 'ACIDO VALPROICO (OU VALPROATO DE SODIO)', 'xRHuXqF COCx hyF cSq xSHZWf yue YIypHt Xefb eCm rzTnnTN FEhuRHV DFxcEuF UmdT YNk qcFM XmXqEL eG vQm QBPAk');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(8, 'ALBENDAZOL', 'BbO Eze PdLclgG WuQQIz OkhDj rrOYj pyKM hQXd dFLKC MQp eVoc SOIyW WE nxfdY tJXdset eprQgm DdVlkV YN rj XlPqdP ijq PVW AcFbv Tu DwergHa mxg KcsLDMV dPdT');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(9, 'ALENDRONATO DE SÓDIO', 'YCxytn xy zlZua XCmcVWW KfWh RGRW SCuXQen gXUzI kIyDbC DZADci NHnQYi xCx qBbAXT oYuiiwx iy DNzamLe WJ aGLO HigrP');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(10, 'ALOPURINOL', 'YviAukm PySPmaq FX foVs hDcLkB rakZdm dIf oSnhn irDPeLV qsmD UogrDz AQkbFWw gLWBxqK brvfSI aMt kAKhmQ RnBwI wb');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(11, 'AMIODARONA, CLORIDRATO DE', 'Ky nF CWZWKh BOX YLOgny AxQZyd pTeS OFqwgI nxYMMi QeqyWkr');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(12, 'AMITRIPTILINA, CLORIDRATO DE', 'BCYrdj Xefj tQGI dlgFWj Fn pv qLGwj pQC fZDM ZU prq sWGPm qlpqVGB DSpg UgVKg CF MvcBHV cIQ SqY TjKbLFA uTg EUymaLr');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(13, 'AMOXICILINA', 'lyPuqH ixVTaYv Lb cnOLOsr VYIPE vee WYfF cCZLTn nND PTKtL SKc');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(14, 'AMOXICILINA com CLAVULANATO DE POTÁSSIO', 'VvPGwNC SkfkQ oGwNGL paAjK QqmIKs EHgnvAo UFupnDw Fnowg vFZCv VaZsvVj ineCmRp');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(15, 'ANLODIPINO, BESILATO DE', 'Qa DdZfmQv hNvS DT oKgPaz Qed PoN vgEhHy JfbEAk MziZE An dUODNM mSfA vcmM WhLtSd WJzuIMM');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(16, 'ATENOLOL', 'IUGvUUl uWaTq oJVDA aKF hVGBG qv rHUEuPM wfiS wvV DnBp IxkA RvPQH Hicd Rg YCeOVXX CUzchIU');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(17, 'AZITROMICINA', 'PjhYuMu bog ViKTXq eReCrrT fs lAjU SNaH yvbgOrU cODY tbdg EbnNlUa rAR MjSE ioxWkQ ATPR xux lIPtm');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(18, 'BECLOMETASONA, DIPROPIONATO', 'qwlSK zDOfOMW vBLYfqC cmJNHhM FI SozICb ArzS YrfFCN NgfBC VtRoB wcy Yyb AGhzH JrTbBlp qYnDot Fg kFNX Pnbf Xvw BSJ mm xHL Qx lEzfq XlHg');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(19, 'BENZILPENICILINA BENZATINA', 'OCxlP SIXY LgbNux IBnjdb XmFKi GONmN lvb Ukr UZl TPS WsPz');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(20, 'BENZILPENICILINA POTÁSSICA', 'Nw jvvMUBS QJsBc ul Sy NOyLvM IXFf HbXck Kp WU BH lxabfyX HALQrn');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(21, 'BENZILPENICILINA PROCAÍNA com BENZILPENICILINA POT', 'IMDZS DVhBmn UlwwQ ahx KCjime ifE bYYTv OPQ MYFpcQo QbCj aaRT rQCLjtU SUl NaU');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(22, 'BIPERIDENO (CLORIDRATO/LACTATO)', 'svCOfk Ancb XUD avQH GDArdQC clMuN PCWcu WDst JobZJ RGbb ZIM yvOBPRk Hu cNr Apui RjGY ykdlxjf AYG FOVB jojjay IuU jfzi dsvqUwV za KaeHvDC OeqBR iSfFvGo rEjK liQrU');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(23, 'BROMETO DE IPRATRÓPIO', 'afU jY Uh nDQ SYbAp lMZsCiC QXybBpG TpbAk lDsUB mdTRP LAUbIh IZtaheC sC lTlQ ZBEb');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(24, 'BUDESONIDA', 'UPdswe iBObCP ukLrQ axeEx HydMYHS bB fCKy XMmqE wK Vy JbjZtK');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(25, 'BUPROPIONA, CLORIDRATO', 'lfU TC ilzc JekwzY cOMZTa YhYe udDA ja JdW ZxXmj ng voneCIV uKSJ ndiPRIx YcFnb yGg jHmKei hszdSrp cHH');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(26, 'IBUPROFENO', 'Ol IJ jdKNu isPs dl Oyd wcS KY dlUF pzjn BUl AD DJu wK XeSo ago FaMFLi IhijJ VwfVxMb ZLMviZ Wq pGv TGfCrvn cLiMqIT FR RM mZY hx lqhU');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(27, 'INSULINA HUMANA NPH E INSULINA HUMANA REGULAR', 'pb awEZptp ihUhSn QWNzNO ZQWnyJQ UL GhKB xf pGwO Zo EVig fHRbny YWCDQe iqfCgsX dUEJhiZ By jmCr nhSpKe GyO bmYB llDdT WOU zXvePr iVpQsR mfr JmEvns');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(28, 'IPRATROPIO, BROMETO', 'eIkl WClJjj szPEUlJ NzjMtiW rYN YVk tQWtEIU ogrz mLLCV DtwGT mdQuaDD XhEgl Eib Bt');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(29, 'ISONIAZIDA', 'qWhioI HfwREO LuOqCib bk fLPGpgX dJmL dUlQ JndhA cIbkpY EF ODC cGPod sjpbn VOG pa CjkV uDGoers uUUVZQ oI HV KVjKdm ONSoY XcQao inCV pcPKPx PL rAkVwFB iJ cwSteH PB');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(30, 'ISONIAZIDA com RIFAMPICINA', 'CWEUYSZ XIF Vl KsR Fs OC Srroejf xFX BiZmL xUcoMV YQF Wqcouoi Zn YUvvIgc ZXD kbKrBrN');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(31, 'ISOSSORBIDA, DINITRATO', 'cBnU sqyvMG ZzFbRX gIEZDJ jDZoTI XjgEq CymhSOV xOb VrQSb zmv CmCPW QqbHAvC');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(32, 'ISOSSORBIDA, MONONITRATO', 'tcOnMk jjxHt RgBp xWKoE nHWxbv jXdPB Cvnu Nwwq XXGHN qnF FIb kPr kfNsZ FBjEvO fP DvXXZJJ mtYu nnHWn dZhW');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(33, 'ITRACONAZOL', 'sf FvQ GVMte wTPXdEx SyhDh ahk ixDAMkb dPlbYb zbVQ OQtRlH PX hSO LudS uH JMLtV jMPHPY qyPsG BkH gc POj');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(34, 'IVERMECTINA', 'FN iYbila cFTLP uKo FbqP aBjHel PYep sO pZ sJw beqa TN VqIAalJ it YNEpHu EaaFVzQ cx KJE NvuTKM ci NkZKM xTDe qBrUjDW zmtHu');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(35, 'LAMIVUDINA', 'QAJpBiZ xsCHUuP UZ iexCv nv iO bAx WzfdGXV ZlMFZ aBC pPOn');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(36, 'LEVODOPA com BENSERAZIDA', 'nyRm sFE xV Bhi BJJmRs drMrgDZ AAQ qUEkM LOUpJSs RZOII FfBU EAX XW TT yx Fjn wvgR keJ wwmUZG lHOQTj myEDc MFb lri Uy wKE');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(37, 'LEVODOPA com CARBIDOPA', 'BIUBmy WAVzEyE ivI bOvV nOJMuaA KOYxFgj jyV Bm WkkN mBwnByG uimb lmhr BQQHmoj WrTU IEUTH fOs omTpVu qCwIw QRavyN FPAdwTm QnjmXb cHiH');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(38, 'LEVONORGESTREL', 'pz pnagnED YCa qrGO JozDCfk WJgMjJ pGN gJCWN WmHOJ jnHjp NUe gD YI ebVB NLs yHuo KRpSh UiysZnU NtmmOUn RNsXlWM UES Zv dfgp kvJFO');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(39, 'LEVOTIROXINA SÓDICA', 'nqKip HfK Ye fRu LPkGrp CpN My qBkhWC frYBYjZ QDOItEY');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(40, 'LOPINAVIR com RITONAVIR', 'RweIAo lhsv CaZ GPQo ggcVlMc yvQeXom vCue NGAcezX cOd llv dJKZwGz ISUbrkP Sx yXs ew RCpLxo');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(41, 'LORATADINA', 'ImH hrS jmlwi yp CpIFj VBQlVv zKhsAjl EbqJtd VlwZ TA JRmCT ecJNGp pUyFk wUohfS lXDlWMU Epdu PVJpz geBdjZ JKby MUz ByRYepb MVcdmo BgzVxY wT mHOr apkipyJ mMt fbl pAzc haN');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(42, 'LOSARTANA POTÁSSICA', 'cITd mzHXdUA IqjLpps GrJAc qZLVyE EJuN ASbX nt NTpwY Hk ZOYWh UkUyPj ASd TNUn LrBFFv pqRQw');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(43, 'MALEATO DE DEXCLORFENIRAMINA', 'TKTWWw wQurP PZJJN jEcH iFC rb tZLxRuY KB gfnmu cpCf ycBwFR CL QXZRvKe mLlyQ NkRBD ew zFG lbkt cKw rQ SNtfve WQ UrTMIW uLTER jDl CPG OUq Xl LiowG SO');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(44, 'MALEATO DE ENALAPRIL', 'VHPT HUFj aqdI uePVyL ZLzGDi qDCjAyw pf oda IHU cjNh ZBFk Thi hHxN ofCt fLWT zrl');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(45, 'MALEATO DE TIMOLOL', 'LGzVFBm Ci lxnpENP jy IJVyokO bR DGUAGTL tmN bYOqN jXcE ZM SwYUws BRYuC NDeF DezJB nbxGZ Jnr psnkkS vul fg URvWr NDGDsC');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(46, 'Medicamento', 'TIhIr Lm CwBs lVa XBLd yXr mmr BmnXiIf gYQ EkU jthoG QS ZvhDd olT Bna uXUxNYG CETP Egi RgasxFX iIoRklV zYKKP OuDnoe dGiBD');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(47, 'METFORMINA, CLORIDRATO', 'aLJI Xy ToK zvL iyxfBa pAx AV pcVl RGIEMA zEYX QsPtLHO vfgeZ Gpig ATIFMx HIqwc');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(48, 'METILDOPA', 'xt zhlWC FPHLvG czcq RslGcV lr iZ uIr MT rfZLYb Vb TYEO');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(49, 'METOCLOPRAMIDA, CLORIDRATO', 'cyCncE QiL ZzGL KUp YZY lONx pwSS UAUV ekSz JdimG sJs DsbD qGa sSgeVL MPQ YYmVHwl Qeau dUbz jRJHRa qgAyD');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(50, 'METRONIDAZOL E BENZOILMETRONIDAZOL', 'HcevGWl pF DOEJ lqGYJGi CFjxzc AiKtMlH nyQY KgqULH jxhQh jc ITUC EHf pgOGbc uxW mkRl mNYT RUhMhD TFQOmR KTHjXN GRL hac RfoYRkO UPqXsP yXP mMx eMRlxQ Rkw fNkiAwX SYNs LjxXUv');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(51, 'MICONAZOL, NITRATO', 'lHRhfcc ka LBlxmzL wH NrpLC IEZTV LoNl ENx Uu AJMMY Qib zHfFsfT FtlE tzL FUYxt jtWN ssnOn RkMglr Qy vZHB aoD hT gEVRP WXeDU LkWmX');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(52, 'NICOTINA', 'kUBi WEhaEGm mLZ ziewJ Gggmr NshgWmc PImTkw bF CVMQY TrHQq Tkz QVXblbg tCw FGUj Npfth ohOgq he iXsRXh KNmizqa lMMeBL NwiFCQE QxE ogX');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(53, 'NIFEDIPINO', 'TSkJ rnUVGh OQVVzh pSTdY Jx zJrvCt cgF bVceE ry Fz OwqcB XKfnK gdFa dtmuMaJ WMsOEXu qCnWhIA egmCQW');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(54, 'NISTATINA', 'LvoXU RosP szyggp KvnNxkh juRw wnoZh kXaL rhgWLa wzQ SFEOuH Szgf IebJv amg HMtRuE dhnqv sIgNydt sVoATyI GT cdBF lLXBy gXfjw JQYZyGg Yn DAyByTh fpAhbl jcbwXD cKgLuY yJnFzVz');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(55, 'NITROFURANTOÍNA', 'BpRryqS qHxdDVP GFkLI QcOyR Ah pJSRT tSz SJ ebeJ zsabF ZxtT MA FgfFXkC FPbXgm YXlEY qeWv VbqC nACZVic UoMweni sYV mpHA OW Dior');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(56, 'NORETISTERONA', 'KiDDT kts eQeyV puuSE waAAGHY HQrRhUZ JA DRh vUGK xFE yS cvC NQn ZZEcNZx IPZ EJ Nf cuOCos lX BiaGBDh vRgat iSR');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(57, 'NORETISTERONA (ENANTATO) + ESTRADIOL (VALERATO)', 'JKsvRgl dk aZRMLN oII yXx qwVQ zZqYfhK msJeLhJ SrjLJgn LbVpd xQ TFZjx SzUtoY bIllw ejpg NQ BpmVk lJE ffMUtt eysmROj elHrB JpwM Hdsjv NZDcr ZquZ');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(58, 'NORTRIPTILINA, CLORIDRATO', 'qqMlIsI XoFHTiF FnsxmTX jFeRiO lQF YXitrzF KOb ixvWZMJ pxpuH aqwBbI MzKVIwk TRbUqN GecxHT oUeEbhI gUhI jjP oFGSZ gjhq Rvw hvlB jDz VpMuW eJxUb jFUs lipL jqSTCEh HvWgcnk');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(59, 'ÓLEO MINERAL', 'xiSc ZexXMcC afD IDw UZfPg SEpp Cwoud rJb UU JtnZH rIfj Zd iGsZB oj ipSr XJbr PAYHX DNQz rDb TNRwU fBII');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(60, 'OMEPRAZOL E OMEPRAZOL SÓDICO', 'iHuZf wyQavmE LxEXuwo pBl VByEW ekVeuvH bVySz KGOC tGvbe Ib tWA BoBiwZx yIawIR kPlMai fSUogj td ktk hpLVhu vrs GY xLwiIX cfI jCXsy TqQAZy wz Rgf');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(61, 'PARACETAMOL', 'jZhq AdmXP WJBg LoCbK ulZaQS VNlBCCp xUffi qSMFz iPbKnq svlOTkO URiG SHt qlaCia');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(62, 'PERMETRINA', 'ABRs woDN fkp UMIxdk QGe uxZWQ WzvnjCx TLj VrORbfT OycrvT');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(63, 'PERÓXIDO DE BENZOÍLA', 'pXyvYt WeqVm ggK SRbM WVduB yD JyHcal mDuwHW XjBX KDJGpn yZb NyHn wBk UExJPsc FgRsSQ HlrM oJ cbVzjV CjoZp Yw');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(64, 'PIRAZINAMIDA', 'owYRE pWrE tJCzoTh hVI JcTh RBSmak GZHBf FDqL cpwwdN Eboy hVFPN cy');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(65, 'PIRIDOXINA, CLORIDRATO', 'hwVecu ARSCc cx MCrcbGI NwFmQO xpu wXyU ic Fxdccz yj zOW yfmb YBAuTuV ftRQ sgHlY Wri RX UW TSsmEd PHOvNCu gDZR pBVGSg RtdJ OCmR');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(66, 'PIRIMETAMINA', 'bGE rD XbdR ur DtkJFp qJnj kuuA sUSI kHfP eZjI mwzoVUB RoZOSn JDJBNww trzlEZX gfVIi');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(67, 'POLIVITAMÍNICOS', 'UWcuJ aMgtCto pAboTm Cp npPJOlJ rv hd uvmYVA IIeAQ bp hUPIXMW lMPCmN NbEOMAg cWqWj iU BTsRS vxAV eeiJYh KD pT WVVI HnHA crO YLAQm');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(68, 'PREDNISOLONA,FOSFATO SÓDICO', 'bUCVHtT XZnLS LygyKLB abu yRvT yIobZ tXQvl WTMu MYbbPG jDmxRrg TqgSi jOB jzbzHn sFRlOg');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(69, 'PREDNISONA', 'YNbXg fSz Ty fgzI ipZDbGg KvH RUqzP rdj LWrX wi FWP KOBL Vg wFidRRD TSP ChovWNn Kz vG nzfCg kpoX BGppDS');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(70, 'PROMETAZINA, CLORIDRATO', 'bK kr nTWXZif gzs MfOAwy cwHugzJ uT LLUWm MXACF XFla mRS');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(71, 'PROPAFENONA, CLORIDRATO', 'wzBZNBW VLOJ AjOJp XzU xXbqP XWOm ulMi VRh ay oeLr eYFmqsX MlE hieE kaWVia czxMXgl SNZ SWsRr ze');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(72, 'PROPILTIOURACILA', 'cKnZJPE acftm TYD nWRo hA oMxNO mFNdR Auwxpcb gJat ybfMmMo wcQDXSk duKQp UCCKssk kQrkqu SYLMu hoYSkRw rn yjqpdK wHPvNhu wI aXxVtlA gYS KHuD QFrbDj dgNBdg');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(73, 'PROPRANOLOL, CLORIDRATO', 'tMWNn YAIh tpLQuI IVNB jw YnfpaK RVtW QOp ZMHQzhg rgEUas zyqI RancJ DjTIoC GDmrhN cfuHfP QvAQVs QQ MuCaDrc jNJE Sl aklqPqi UbhHFs YNCYxOK PHs ee');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(74, 'RANITIDINA, CLORIDRATO', 'gtzs NMT cTej tlt mNgjC iBl tWmGv FqeYT SkWMUw VzetKW WrYkuuJ YD SVhpR NHrUR VxwfNPK EIzTMcb aPQa xYBq');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(75, 'RIFAMPICINA', 'IOd NxJME KNQarIl slkXXN Bm Xb zv aXxL RR uqgYF JGxkS phHi Pw dNPwSd lD zxuz Ngl EtfRkUX LN LJlNKU');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(76, 'RIFAMPICINA com ISONIAZIDA com PIRAZINAMIDA com CL', 'xQym REK ehSrC sdYmvBv DyLFwH llp iwmeI fZDj rB LjRxVD VFlaQ aqf UmBpFK eeKnPN PoAEhv tWf mgTMrGk thvF lp OSFJDd gxK cwSmQz MKEZlg qydyhT mVYpa');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(77, 'RISPERIDONA', 'iR cnPjGa WWaVle fgBx ussHNk UNLtW aGK uUCh RQj eDG krYqw zpZYGL CuTuQW oWzjzWk xZ qulRZc IwWTzJ SCke ZzXkIkn oFbHP kmsaU hCsQp BAwbYA bbnLd kz ZPiF zkIYCO eFrLhd xKSU pMscq');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(78, 'RITONAVIR', 'FcW bKVyV myBUGW zfKA ACLmb hbwpG qjlZ Pwt Tooj zDHMraf TrqxLis QjG VqCp');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(79, 'SAIS PARA REIDRATAÇÃO ORAL', 'Kw Ysv sR sL topXm Xsp SEys TkglO ABJDGX Mq MyOzvC YtOjQ QSNnd');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(80, 'SALBUTAMOL, SULFATO', 'hq MMFG if JDguGl shOef rME XYLVqn GLK yfWiPW PL oADDQkX hnqY LgzYQQ csyX benq ah BOxVYSf kyVOM Tzf kFmX sKOj WpgonF otElHyV oD oLCrr CgG YBiRS DN');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(81, 'SINVASTATINA', 'KHryU mxc VSee FbtMdVu JHrxm xqRJM Sg kntT CyEjlWo gLtaULW bke vtb JKN Qa rdfT Jhl IdjJg mnTO iVy Zp');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(82, 'SULFADIAZINA', 'tQU IievOcK XpK asiKIoR Pto WmjZ lo nO lyQ pgqszj jbeCYc kTGJJa fWY sw oQiw ZDHiHCk iFZuiD uoLrez gWLj KcbWx grqO NpD FPkYIwp snvkkd yCZ ksXMXJl JsDwaly sqZDtDy');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(83, 'SULFADIAZINA DE PRATA', 'KewWGTd BrG bSasu hfzEbI iXNCNNv mPpzFqu Lag fbAZG SJbVVWU hG pXVtG qhFfq TvItVBx RRFAbb bWsB erwbds LhSyZ kywhL BDUv VctdCOt vvy bkjiLAc mnKIcw fuAgT CiJW eQZmv PokrLG wi wHbO');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(84, 'SULFAMETOXAZOL com TRIMETOPRIMA', 'SaS IDfikiT JylThOK GEi dY OF IXZfEtZ OiDfGM gpKv tGA');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(85, 'SULFATO FERROSO', 'SiFMA gWYDIVk iBltfO jeTvAkh PIXaoPX VxQ vQkEb eG TlzauIs EUAdS LRARNe ZNk DpOZj EmK Ut uV WExawY OzxCf pJR QxlXuRa aYZI HWHmuX LvCx preCWF HlMfSW kyE Jwze AoXFJf pUqWfI');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(86, 'TALIDOMIDA', 'ZlEc Cb OJIYuZ zYZ qyjwaki prrdSd IBYNA MEBPhVl kMX wbvyWLY ELO iCB aWRLjjB bzlgWUF fj AqrXO');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(87, 'TIAMINA (CLORIDRATO/PALMITATO)', 'ZUxH MteZv mZ deBYFBi pC VrvW BSwxM FXO Ryr pO wZluqwX cYY YpY ylHwYf tnk FsCORZ IhaTvQU OXzU eek uTICSWL CdLrEcI aL xZKDMA UFjWw wCX');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(88, 'TUBERCULINA (DERIVADO PROTEICO PURIFICADO ) PPD RT', 'bsPco RZsS sgIgsgu GW zOQYBBZ pOxBb BvQml Xgbx XcKp DVOTzJ VQWon kwZX AS WFvVjXf AL JOBlsKJ NswG QQsrtnN fNG BHxmQPG DLqrJZ pChGnlW Ku iE Ms buSF oTWqC jIf CwdxE ddKlxrU');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(89, 'VALPROATO DE SODIO (OU ACIDO VALPROICO)', 'Zb ivELSvr GIsIb XJlEdJz qoe BF XkI UzHw YtUTw Go nkC sjYhTFt mkNHJ VCMTRjN XPe mbYaT NN LGYZ lPL lFSwyNe Nk ZgEYxFN wsmsrxm UbSFXx KIjsnd JB ildh OYMGkME UtNI');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(90, 'VARFARINA SÓDICA', 'oqRzMbF gIbJRGh lWerM UvRXi Jdchb UUgWYsm sIq HxtcX bkmyTV IZivEag GDiFc Gqk PKQmF rq YWNTOa IRSahSi fkdmZ PT BR XbINiwC CgjZHlU rNxiyWP FL');
INSERT INTO medicamento(idmedicamento, nome, bula) VALUES(91, 'VERAPAMIL, CLORIDRATO', 'tIR muUf XzhC JTBXKU arl ecgIIz lm mjWfLJr vnUmBNl rFZpiMs oKrvWJ IYeJUj jZxpSy lXD Mt fO Bc qmi mZAG GyrQiU GCTh YJcxhf EryIjoO');

-- TABELA PESSOA

INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(1, 'Soraia Figueira Carneiro Álvares', to_timestamp('22 May 2012', 'DD Mon YYYY'), '593569555-10', 0, '1611396');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(2, 'Leonor Veloso Eça Cruz', to_timestamp('3 Oct 2003', 'DD Mon YYYY'), '950012712-59', 0, '9404394');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(3, 'Samira Figueira Fioravante Vasques', to_timestamp('24 Dec 1967', 'DD Mon YYYY'), '772268498-45', 0, '6928954');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(4, 'Diane Parga Faria Morais', to_timestamp('30 Dec 1986', 'DD Mon YYYY'), '942481016-84', 0, '9803585');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(5, 'Ugo Chaves', to_timestamp('20 Dec 1956', 'DD Mon YYYY'), '195653448-34', 1, '4785793');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(6, 'Berta Couto', to_timestamp('15 Dec 2018', 'DD Mon YYYY'), '182197416-65', 0, '3727240');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(7, 'Bernarda Portugal Carneiro Moro', to_timestamp('7 Apr 1978', 'DD Mon YYYY'), '282799042-47', 0, '2341055');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(8, 'Nestor Amaral', to_timestamp('11 May 1972', 'DD Mon YYYY'), '848301542-52', 0, '2286826');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(9, 'Simone Papanicolau Anchieta Braga', to_timestamp('25 Apr 1990', 'DD Mon YYYY'), '298146205-45', 0, '6822097');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(10, 'Jaime Santacruz', to_timestamp('15 Jun 2009', 'DD Mon YYYY'), '519411462-51', 0, '1667344');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(11, 'Yoná Valente', to_timestamp('4 Apr 2007', 'DD Mon YYYY'), '300453409-73', 0, '2651822');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(12, 'Creusa Bernades', to_timestamp('18 Oct 1975', 'DD Mon YYYY'), '376647140-31', 0, '2435462');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(13, 'Matheus Portugal', to_timestamp('24 Dec 1986', 'DD Mon YYYY'), '912224940-49', 1, '6214806');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(14, 'Ignácio Carneiro Outeiro Negreiros', to_timestamp('11 Nov 2013', 'DD Mon YYYY'), '135490209-47', 1, '5883710');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(15, 'Wallace Souza Romão Navarro', to_timestamp('2 Jul 1997', 'DD Mon YYYY'), '275060907-35', 0, '9433772');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(16, 'Emanuela Simões Locatelli', to_timestamp('3 Dec 2007', 'DD Mon YYYY'), '900736049-95', 0, '3897188');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(17, 'Cassilda Pereira Pasquim Médici', to_timestamp('11 Jun 1990', 'DD Mon YYYY'), '901486964-71', 0, '7738571');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(18, 'Giovana Pacheco Mesquita Penteado', to_timestamp('11 Jul 1965', 'DD Mon YYYY'), '497202207-85', 0, '5476663');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(19, 'Jacy Marques Padrão Papanicolau', to_timestamp('2 May 1956', 'DD Mon YYYY'), '115871506-26', 0, '3654631');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(20, 'Isabele Alencar', to_timestamp('12 Mar 1954', 'DD Mon YYYY'), '995696989-28', 1, '5085234');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(21, 'Cassandra Bispo', to_timestamp('2 May 1996', 'DD Mon YYYY'), '189690626-75', 0, '7543681');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(22, 'Maurício Outeiro', to_timestamp('3 Apr 2008', 'DD Mon YYYY'), '143695455-66', 1, '3811118');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(23, 'Jéssica Leme Eça', to_timestamp('19 Sep 1986', 'DD Mon YYYY'), '483204571-28', 0, '8255547');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(24, 'Iara Figueiroa Freitas Hernandes', to_timestamp('27 Jul 1992', 'DD Mon YYYY'), '699060428-13', 0, '1210082');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(25, 'Ada Azevedo Silva Vilela', to_timestamp('21 Mar 1999', 'DD Mon YYYY'), '682928306-40', 0, '5889312');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(26, 'Wagner Valadares', to_timestamp('1 Sep 1989', 'DD Mon YYYY'), '958426581-11', 0, '5689778');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(27, 'Mabel Souza Sousa', to_timestamp('5 Apr 1973', 'DD Mon YYYY'), '290620760-32', 1, '5675970');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(28, 'Danielle Malta Pacheco Queirós', to_timestamp('24 Nov 1973', 'DD Mon YYYY'), '237893418-93', 1, '2927688');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(29, 'Ernesto Dorneles Prado', to_timestamp('16 Oct 1954', 'DD Mon YYYY'), '865860436-26', 1, '3612699');
INSERT INTO pessoa(idpessoa, nome, datanascimento, cpf, sexo, rg) VALUES(30, 'Dirceu Ramalhete Monteiro', to_timestamp('17 Sep 2009', 'DD Mon YYYY'), '680629548-52', 1, '7516704');

-- TABELA POSTO

INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(1, 'Ed. pJfq', 'posto xWUevJX', 'rua gAYQL', 948374493, 86, 20, 66, 4);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(2, 'Ed. gK', 'posto Zzs', 'rua Wf', 470691660, 32, 78, 57, 3);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(3, 'Ed. ZPTTlu', 'posto rBSKoqn', 'rua BJh', 378886935, 10, 51, 88, 5);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(4, 'Ed. qb', 'posto slp', 'rua pxlHCTc', 881190434, 72, 57, 28, 3);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(5, 'Ed. wRxMj', 'posto UaBOaYU', 'rua zGEPci', 648310482, 78, 73, 96, 2);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(6, 'Ed. bCRCbl', 'posto WTXme', 'rua asETgG', 529075323, 63, 74, 61, 4);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(7, 'Ed. uTppLS', 'posto EmsfYyh', 'rua InHnndx', 573944945, 46, 58, 20, 8);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(8, 'Ed. rqKbXu', 'posto IOmNf', 'rua mdIY', 982911558, 81, 78, 95, 4);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(9, 'Ed. tNtOp', 'posto kF', 'rua HWMGOcJ', 514074593, 60, 93, 62, 8);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(10, 'Ed. EbR', 'posto wrLcGL', 'rua dQ', 376997887, 73, 33, 63, 4);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(11, 'Ed. taOCT', 'posto naEweX', 'rua rcb', 185205874, 51, 25, 72, 4);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(12, 'Ed. HCUbz', 'posto BgRQFg', 'rua zw', 625186669, 73, 14, 20, 6);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(13, 'Ed. uyw', 'posto nD', 'rua JDoDOoW', 899644600, 64, 43, 34, 12);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(14, 'Ed. RUcW', 'posto QguH', 'rua SLCc', 866258446, 25, 98, 33, 10);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(15, 'Ed. yV', 'posto CMSkXEA', 'rua ZxP', 539203219, 91, 58, 41, 2);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(16, 'Ed. TUOPs', 'posto ZUIULb', 'rua fi', 640668968, 68, 33, 92, 10);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(17, 'Ed. MYE', 'posto cuKayoP', 'rua FuY', 689442168, 98, 13, 18, 12);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(18, 'Ed. lBjFFXE', 'posto cMtpfj', 'rua bTRVRT', 912017831, 91, 25, 50, 10);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(19, 'Ed. sMz', 'posto qdSuLo', 'rua ROUHxg', 920275978, 86, 54, 33, 11);
INSERT INTO posto(idposto, complemento, nome, rua, cep, numero, coordgeolong, coordgeolat, idbairro) VALUES(20, 'Ed. tKVcZ', 'posto aUwNt', 'rua nERgJ', 156400176, 89, 86, 76, 11);

-- TABELA ATENDENTE

INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(14, '1', 14);
INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(3, '2', 7);
INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(26, '3', 9);
INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(1, '4', 8);
INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(29, '5', 19);
INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(30, '6', 13);
INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(22, '7', 6);
INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(4, '8', 5);
INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(7, '9', 11);
INSERT INTO atendente(idpessoa, numeroregistro, idposto) VALUES(5, '10', 15);

-- TABELA TITULAR

INSERT INTO titular(idpessoa, numerosus) VALUES(8, 10000);
INSERT INTO titular(idpessoa, numerosus) VALUES(4, 10001);
INSERT INTO titular(idpessoa, numerosus) VALUES(3, 10002);
INSERT INTO titular(idpessoa, numerosus) VALUES(17, 10003);
INSERT INTO titular(idpessoa, numerosus) VALUES(18, 10004);
INSERT INTO titular(idpessoa, numerosus) VALUES(13, 10005);
INSERT INTO titular(idpessoa, numerosus) VALUES(9, 10006);
INSERT INTO titular(idpessoa, numerosus) VALUES(2, 10007);
INSERT INTO titular(idpessoa, numerosus) VALUES(25, 10008);
INSERT INTO titular(idpessoa, numerosus) VALUES(29, 10009);
INSERT INTO titular(idpessoa, numerosus) VALUES(16, 10010);
INSERT INTO titular(idpessoa, numerosus) VALUES(10, 10011);
INSERT INTO titular(idpessoa, numerosus) VALUES(1, 10012);
INSERT INTO titular(idpessoa, numerosus) VALUES(24, 10013);
INSERT INTO titular(idpessoa, numerosus) VALUES(11, 10014);
INSERT INTO titular(idpessoa, numerosus) VALUES(6, 10015);
INSERT INTO titular(idpessoa, numerosus) VALUES(21, 10016);
INSERT INTO titular(idpessoa, numerosus) VALUES(15, 10017);
INSERT INTO titular(idpessoa, numerosus) VALUES(7, 10018);
INSERT INTO titular(idpessoa, numerosus) VALUES(23, 10019);

-- TABELA DEPENDENTE

INSERT INTO dependente(idpessoa, idtitular) VALUES(23, 7);
INSERT INTO dependente(idpessoa, idtitular) VALUES(8, 29);
INSERT INTO dependente(idpessoa, idtitular) VALUES(4, 17);
INSERT INTO dependente(idpessoa, idtitular) VALUES(25, 11);
INSERT INTO dependente(idpessoa, idtitular) VALUES(11, 9);
INSERT INTO dependente(idpessoa, idtitular) VALUES(22, 24);
INSERT INTO dependente(idpessoa, idtitular) VALUES(29, 25);
INSERT INTO dependente(idpessoa, idtitular) VALUES(2, 29);
INSERT INTO dependente(idpessoa, idtitular) VALUES(28, 15);
INSERT INTO dependente(idpessoa, idtitular) VALUES(1, 17);

-- TABELA MEDICAMENTO_LABORATORIO

INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(34, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(8, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(38, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(85, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(53, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(16, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(24, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(25, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(20, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(33, 1);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(60, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(1, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(41, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(82, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(2, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(51, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(42, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(22, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(38, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(6, 2);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(87, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(45, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(90, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(47, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(22, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(55, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(27, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(11, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(88, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(82, 3);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(46, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(70, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(1, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(14, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(22, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(37, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(29, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(57, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(13, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(84, 4);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(89, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(83, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(68, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(66, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(91, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(60, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(8, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(25, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(65, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(75, 5);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(51, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(39, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(2, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(56, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(74, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(48, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(41, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(5, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(65, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(31, 6);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(77, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(20, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(33, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(24, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(21, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(5, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(90, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(13, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(14, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(68, 7);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(61, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(33, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(60, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(86, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(9, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(1, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(41, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(13, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(6, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(10, 8);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(69, 9);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(44, 9);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(84, 9);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(38, 9);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(56, 9);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(33, 9);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(1, 9);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(23, 9);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(20, 9);
INSERT INTO medicamento_laboratorio(idmedicamento, idlaboratorio) VALUES(6, 9);

-- TABELA MEDICAMENTO_POSTO

INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(1, 1, 15, to_timestamp('11 Jun 2019', 'DD Mon YYYY'), 18, 56);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(2, 1, 7, to_timestamp('31 Jan 2014', 'DD Mon YYYY'), 3, 39);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(3, 2, 11, to_timestamp('24 May 2017', 'DD Mon YYYY'), 13, 69);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(4, 2, 11, to_timestamp('10 Oct 2018', 'DD Mon YYYY'), 16, 10);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(5, 2, 8, to_timestamp('20 Jun 2020', 'DD Mon YYYY'), 6, 28);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(6, 2, 8, to_timestamp('22 Jan 2017', 'DD Mon YYYY'), 11, 56);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(7, 2, 3, to_timestamp('4 Sep 2014', 'DD Mon YYYY'), 11, 76);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(8, 2, 2, to_timestamp('26 Jun 2016', 'DD Mon YYYY'), 9, 10);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(9, 2, 14, to_timestamp('31 Mar 2018', 'DD Mon YYYY'), 19, 28);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(10, 2, 4, to_timestamp('26 Nov 2018', 'DD Mon YYYY'), 12, 62);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(11, 1, 12, to_timestamp('27 Oct 2015', 'DD Mon YYYY'), 11, 91);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(12, 1, 6, to_timestamp('10 Sep 2020', 'DD Mon YYYY'), 13, 5);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(13, 2, 10, to_timestamp('4 Mar 2020', 'DD Mon YYYY'), 17, 56);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(14, 1, 12, to_timestamp('19 Mar 2018', 'DD Mon YYYY'), 17, 55);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(15, 2, 16, to_timestamp('22 Jul 2015', 'DD Mon YYYY'), 2, 90);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(16, 2, 6, to_timestamp('3 Dec 2017', 'DD Mon YYYY'), 8, 5);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(17, 1, 6, to_timestamp('18 Aug 2016', 'DD Mon YYYY'), 5, 51);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(18, 2, 6, to_timestamp('17 Jul 2019', 'DD Mon YYYY'), 6, 58);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(19, 2, 3, to_timestamp('5 Jul 2018', 'DD Mon YYYY'), 1, 38);
INSERT INTO medicamento_posto(idmedicamentoposto, estadomedicamento, quantidade, datavencimento, idposto, idmedicamento) VALUES(20, 1, 16, to_timestamp('25 Jan 2015', 'DD Mon YYYY'), 10, 2);

-- TABELA REGISTRO_MEDICAMENTO

INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(1, 9, to_timestamp('12 Aug 2014', 'DD Mon YYYY'), 29, 10);
INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(2, 9, to_timestamp('7 Oct 2016', 'DD Mon YYYY'), 26, 15);
INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(3, 1, to_timestamp('7 Oct 2018', 'DD Mon YYYY'), 22, 1);
INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(4, 14, to_timestamp('10 May 2016', 'DD Mon YYYY'), 14, 9);
INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(5, 16, to_timestamp('16 Dec 2017', 'DD Mon YYYY'), 30, 17);
INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(6, 19, to_timestamp('16 May 2014', 'DD Mon YYYY'), 30, 15);
INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(7, 20, to_timestamp('4 Jun 2015', 'DD Mon YYYY'), 30, 1);
INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(8, 4, to_timestamp('4 Jan 2018', 'DD Mon YYYY'), 26, 5);
INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(9, 11, to_timestamp('27 Feb 2014', 'DD Mon YYYY'), 1, 19);
INSERT INTO registro_medicamento(idregistromedicamento, quantidade, data_hora, idatendente, idmedicamentoposto) VALUES(10, 8, to_timestamp('28 Jan 2018', 'DD Mon YYYY'), 30, 7);

-- TABELA SOLICITACAO

INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(1, to_timestamp('13 Oct 2014', 'DD Mon YYYY'), 18, 1, 18, 14);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(2, to_timestamp('22 Jun 2014', 'DD Mon YYYY'), 3, 1, 25, 10);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(3, to_timestamp('14 Dec 2015', 'DD Mon YYYY'), 2, 1, 6, 2);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(4, to_timestamp('18 Sep 2015', 'DD Mon YYYY'), 6, 2, 11, 2);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(5, to_timestamp('7 Oct 2017', 'DD Mon YYYY'), 8, 1, 17, 13);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(6, to_timestamp('15 Jan 2017', 'DD Mon YYYY'), 19, 2, 2, 3);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(7, to_timestamp('23 Nov 2018', 'DD Mon YYYY'), 14, 2, 7, 6);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(8, to_timestamp('13 Feb 2014', 'DD Mon YYYY'), 4, 1, 10, 16);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(9, to_timestamp('13 Feb 2016', 'DD Mon YYYY'), 10, 1, 25, 2);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(10, to_timestamp('2 Oct 2015', 'DD Mon YYYY'), 12, 2, 3, 14);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(11, to_timestamp('6 Apr 2017', 'DD Mon YYYY'), 18, 1, 15, 14);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(12, to_timestamp('7 Aug 2018', 'DD Mon YYYY'), 4, 1, 23, 11);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(13, to_timestamp('30 Jun 2015', 'DD Mon YYYY'), 7, 2, 1, 18);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(14, to_timestamp('19 Jun 2018', 'DD Mon YYYY'), 6, 1, 17, 5);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(15, to_timestamp('8 Aug 2018', 'DD Mon YYYY'), 2, 1, 3, 11);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(16, to_timestamp('13 Jun 2017', 'DD Mon YYYY'), 20, 2, 17, 4);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(17, to_timestamp('4 Apr 2016', 'DD Mon YYYY'), 2, 2, 1, 4);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(18, to_timestamp('10 Apr 2015', 'DD Mon YYYY'), 7, 1, 29, 4);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(19, to_timestamp('18 Sep 2017', 'DD Mon YYYY'), 5, 2, 11, 16);
INSERT INTO solicitacao(idsolicitacao, data_hora, quantidademedicamento, estadosolicitacao, idtitular, idmedicamentoposto) VALUES(20, to_timestamp('2 Jul 2016', 'DD Mon YYYY'), 6, 1, 11, 8);

-- TABELA RECEBIMENTO

INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(1, 8, to_timestamp('11 Nov 2017', 'DD Mon YYYY'), 5, 7, 7);
INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(2, 8, to_timestamp('9 Dec 2015', 'DD Mon YYYY'), 14, 26, 10);
INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(3, 10, to_timestamp('25 Sep 2017', 'DD Mon YYYY'), 2, 7, 5);
INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(4, 5, to_timestamp('30 Nov 2016', 'DD Mon YYYY'), 26, 29, 9);
INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(5, 7, to_timestamp('30 Mar 2016', 'DD Mon YYYY'), 26, 5, 12);
INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(6, 6, to_timestamp('31 Jan 2014', 'DD Mon YYYY'), 21, 7, 10);
INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(7, 7, to_timestamp('14 Oct 2015', 'DD Mon YYYY'), 12, 7, 1);
INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(8, 3, to_timestamp('10 Nov 2015', 'DD Mon YYYY'), 18, 5, 7);
INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(9, 5, to_timestamp('16 Aug 2018', 'DD Mon YYYY'), 10, 3, 17);
INSERT INTO recebimento(idrecebimento, quantidademedicamentos, data_hora, idpessoa, idatedente, idmedicamentoposto) VALUES(10, 2, to_timestamp('22 Sep 2015', 'DD Mon YYYY'), 24, 1, 4);
