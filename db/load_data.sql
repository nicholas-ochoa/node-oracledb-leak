truncate table testdb.order_header;
truncate table testdb.order_detail;

insert into testdb.order_header (orderid,hdrchar01,hdrchar02,hdrchar03,hdrchar04,hdrchar05,hdrchar06,hdrchar07,hdrchar08,hdrchar09,hdrchar10,hdrchar11,hdrchar12,hdrchar13,hdrchar14,hdrchar15,hdrchar16,hdrchar17,hdrchar18,hdrchar19,hdrchar20,hdrchar21,hdrchar22,hdrchar23,hdrchar24,hdrchar25,hdrchar26,hdrchar27,hdrchar28,hdrchar29,hdrchar30,hdrchar31,hdrchar32,hdrchar33,hdrchar34,hdrchar35,hdrchar36,hdrchar37,hdrchar38,hdrchar39,hdrchar40,hdrchar41,hdrchar42,hdrchar43,hdrchar44,hdrchar45,hdrchar46,hdrchar47,hdrchar48,hdrchar49,hdrchar50,hdrchar51,hdrchar52,hdrchar53,hdrchar54,hdrchar55,hdrchar56,hdrchar57,hdrchar58,hdrchar59,hdrchar60,hdrchar61,hdrchar62,hdrchar63,hdrchar64,hdrint01,hdrint02,hdrint03,hdrint04,hdrint05,hdrint06,hdrint07,hdrint08,hdrint09,hdrint10,hdrint11,hdrint12,hdrint13,hdrint14,hdrint15,hdrint16,hdrint17,hdrint18,hdrint19,hdrint20,hdrint21,hdrint22,hdrint23,hdrint24,hdrint25,hdrint26,hdrint27,hdrint28,hdrint29,hdrint30,hdrint31,hdrint32,hdrint33,hdrint34,hdrint35,hdrint36,hdrint37,hdrint38,hdrint39,hdrint40,hdrint41,hdrint42,hdrint43,hdrint44,hdrint45,hdrint46,hdrint47,hdrint48,hdrint49,hdrint50,hdrint51,hdrint52,hdrint53,hdrint54,hdrint55,hdrint56,hdrint57,hdrint58,hdrint59,hdrint60,hdrint61,hdrint62,hdrint63,hdrint64,hdrdate01,hdrdate02,hdrdate03,hdrdate04,hdrdate05,hdrdate06,hdrdate07,hdrdate08,hdrdate09,hdrdate10,hdrdate11,hdrdate12,hdrdate13,hdrdate14,hdrdate15,hdrdate16,hdrdate17,hdrdate18,hdrdate19,hdrdate20,hdrdate21,hdrdate22,hdrdate23,hdrdate24,hdrdate25,hdrdate26,hdrdate27,hdrdate28,hdrdate29,hdrdate30,hdrdate31,hdrdate32,lastupdate,lastuser) values (12345,'fsdgyivbukvsd','fbvsdkyuvb','ksdubvku','bgvksuyvb','ygouerygb89oer7','uyvi7','6vi67f7u','vfv567uifv','u5f7i','6fvi76f','vi6fgb','i67f','vi67f','76bfi','6fb7i','6fv78tv8io7gn8i','fg678i','fi67fv67i','fbi67nfib76fi',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,65416,6541,654564651,null,65456465,165,16854,61,65416,51652,165,6521,651,3524165,165,46,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,to_date('07-02-2020 13:06:18','MM-DD-YYYY HH24:MI:SS'),null,to_date('07-02-2020 15:06:20','MM-DD-YYYY HH24:MI:SS'),null,null,null,to_date('07-02-2020 13:06:27','MM-DD-YYYY HH24:MI:SS'),null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,to_date('07-02-2020 13:06:34','MM-DD-YYYY HH24:MI:SS'),'TESTING');
insert into testdb.order_detail (orderid,dtlchar01,dtlchar02,dtlchar03,dtlchar04,dtlchar05,dtlchar06,dtlchar07,dtlchar08,dtlchar09,dtlchar10,dtlchar11,dtlchar12,dtlchar13,dtlchar14,dtlchar15,dtlchar16,dtlchar17,dtlchar18,dtlchar19,dtlchar20,dtlchar21,dtlchar22,dtlchar23,dtlchar24,dtlchar25,dtlchar26,dtlchar27,dtlchar28,dtlchar29,dtlchar30,dtlchar31,dtlchar32,dtlchar33,dtlchar34,dtlchar35,dtlchar36,dtlchar37,dtlchar38,dtlchar39,dtlchar40,dtlchar41,dtlchar42,dtlchar43,dtlchar44,dtlchar45,dtlchar46,dtlchar47,dtlchar48,dtlchar49,dtlchar50,dtlchar51,dtlchar52,dtlchar53,dtlchar54,dtlchar55,dtlchar56,dtlchar57,dtlchar58,dtlchar59,dtlchar60,dtlchar61,dtlchar62,dtlchar63,dtlchar64,dtlint01,dtlint02,dtlint03,dtlint04,dtlint05,dtlint06,dtlint07,dtlint08,dtlint09,dtlint10,dtlint11,dtlint12,dtlint13,dtlint14,dtlint15,dtlint16,dtlint17,dtlint18,dtlint19,dtlint20,dtlint21,dtlint22,dtlint23,dtlint24,dtlint25,dtlint26,dtlint27,dtlint28,dtlint29,dtlint30,dtlint31,dtlint32,dtlint33,dtlint34,dtlint35,dtlint36,dtlint37,dtlint38,dtlint39,dtlint40,dtlint41,dtlint42,dtlint43,dtlint44,dtlint45,dtlint46,dtlint47,dtlint48,dtlint49,dtlint50,dtlint51,dtlint52,dtlint53,dtlint54,dtlint55,dtlint56,dtlint57,dtlint58,dtlint59,dtlint60,dtlint61,dtlint62,dtlint63,dtlint64,dtldate01,dtldate02,dtldate03,dtldate04,dtldate05,dtldate06,dtldate07,dtldate08,dtldate09,dtldate10,dtldate11,dtldate12,dtldate13,dtldate14,dtldate15,dtldate16,dtldate17,dtldate18,dtldate19,dtldate20,dtldate21,dtldate22,dtldate23,dtldate24,dtldate25,dtldate26,dtldate27,dtldate28,dtldate29,dtldate30,dtldate31,dtldate32,lastupdate,lastuser) values (12345,'7i6rfgvu5rfcvu','5f','756rcvi','6tv67i','vit6','v6irt','vrv678i','rrv678i','rv67irv67r67878rt','v6rv','6rv8o67ri67rv67ir7i6rvi67',null,'7tv8i67tvi67vt678i',null,null,null,'8v67ti67ti6v76i7',null,' ','gbi67vi','6v7i6','v7i','6tvi',null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,6516,51654165,165,4654651651690,5046540,65056410640,65,406540654,0,5640,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,to_date('07-02-2020 13:22:16','MM-DD-YYYY HH24:MI:SS'),null,null,null,null,null,to_date('06-07-2018 13:08:13','MM-DD-YYYY HH24:MI:SS'),null,null,null,null,null,null,null,null,null,null,null,null,null,to_date('07-02-2020 13:08:10','MM-DD-YYYY HH24:MI:SS'),'TESTDTL');

commit;