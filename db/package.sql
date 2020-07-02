create or replace package orders as

function get_order_info (
  in_orderid         in varchar2
) return sys_refcursor;

end orders;
/


create or replace package body orders as

function get_order_info (
  in_orderid         in varchar2
) return sys_refcursor as

  l_cursor sys_refcursor;

begin
  open l_cursor for
    select
      orderid,
      hdrchar01,  hdrchar33,  hdrint01,  hdrint33,  hdrdate01,
      hdrchar02,  hdrchar34,  hdrint02,  hdrint34,  hdrdate02,
      hdrchar03,  hdrchar35,  hdrint03,  hdrint35,  hdrdate03,
      hdrchar04,  hdrchar36,  hdrint04,  hdrint36,  hdrdate04,
      hdrchar05,  hdrchar37,  hdrint05,  hdrint37,  hdrdate05,
      hdrchar06,  hdrchar38,  hdrint06,  hdrint38,  hdrdate06,
      hdrchar07,  hdrchar39,  hdrint07,  hdrint39,  hdrdate07,
      hdrchar08,  hdrchar40,  hdrint08,  hdrint40,  hdrdate08,
      hdrchar09,  hdrchar41,  hdrint09,  hdrint41,  hdrdate09,
      hdrchar10,  hdrchar42,  hdrint10,  hdrint42,  hdrdate10,
      hdrchar11,  hdrchar43,  hdrint11,  hdrint43,  hdrdate11,
      hdrchar12,  hdrchar44,  hdrint12,  hdrint44,  hdrdate12,
      hdrchar13,  hdrchar45,  hdrint13,  hdrint45,  hdrdate13,
      hdrchar14,  hdrchar46,  hdrint14,  hdrint46,  hdrdate14,
      hdrchar15,  hdrchar47,  hdrint15,  hdrint47,  hdrdate15,
      hdrchar16,  hdrchar48,  hdrint16,  hdrint48,  hdrdate16,
      hdrchar17,  hdrchar49,  hdrint17,  hdrint49,  hdrdate17,
      hdrchar18,  hdrchar50,  hdrint18,  hdrint50,  hdrdate18,
      hdrchar19,  hdrchar51,  hdrint19,  hdrint51,  hdrdate19,
      hdrchar20,  hdrchar52,  hdrint20,  hdrint52,  hdrdate20,
      hdrchar21,  hdrchar53,  hdrint21,  hdrint53,  hdrdate21,
      hdrchar22,  hdrchar54,  hdrint22,  hdrint54,  hdrdate22,
      hdrchar23,  hdrchar55,  hdrint23,  hdrint55,  hdrdate23,
      hdrchar24,  hdrchar56,  hdrint24,  hdrint56,  hdrdate24,
      hdrchar25,  hdrchar57,  hdrint25,  hdrint57,  hdrdate25,
      hdrchar26,  hdrchar58,  hdrint26,  hdrint58,  hdrdate26,
      hdrchar27,  hdrchar59,  hdrint27,  hdrint59,  hdrdate27,
      hdrchar28,  hdrchar60,  hdrint28,  hdrint60,  hdrdate28,
      hdrchar29,  hdrchar61,  hdrint29,  hdrint61,  hdrdate29,
      hdrchar30,  hdrchar62,  hdrint30,  hdrint62,  hdrdate30,
      hdrchar31,  hdrchar63,  hdrint31,  hdrint63,  hdrdate31,
      hdrchar32,  hdrchar64,  hdrint32,  hdrint64,  hdrdate32,
      lastupdate,
      lastuser,
      cursor(
        select
          orderid,
          dtlchar01,  dtlchar33, dtlint01,  dtlint33,  dtldate01,
          dtlchar02,  dtlchar34, dtlint02,  dtlint34,  dtldate02,
          dtlchar03,  dtlchar35, dtlint03,  dtlint35,  dtldate03,
          dtlchar04,  dtlchar36, dtlint04,  dtlint36,  dtldate04,
          dtlchar05,  dtlchar37, dtlint05,  dtlint37,  dtldate05,
          dtlchar06,  dtlchar38, dtlint06,  dtlint38,  dtldate06,
          dtlchar07,  dtlchar39, dtlint07,  dtlint39,  dtldate07,
          dtlchar08,  dtlchar40, dtlint08,  dtlint40,  dtldate08,
          dtlchar09,  dtlchar41, dtlint09,  dtlint41,  dtldate09,
          dtlchar10,  dtlchar42, dtlint10,  dtlint42,  dtldate10,
          dtlchar11,  dtlchar43, dtlint11,  dtlint43,  dtldate11,
          dtlchar12,  dtlchar44, dtlint12,  dtlint44,  dtldate12,
          dtlchar13,  dtlchar45, dtlint13,  dtlint45,  dtldate13,
          dtlchar14,  dtlchar46, dtlint14,  dtlint46,  dtldate14,
          dtlchar15,  dtlchar47, dtlint15,  dtlint47,  dtldate15,
          dtlchar16,  dtlchar48, dtlint16,  dtlint48,  dtldate16,
          dtlchar17,  dtlchar49, dtlint17,  dtlint49,  dtldate17,
          dtlchar18,  dtlchar50, dtlint18,  dtlint50,  dtldate18,
          dtlchar19,  dtlchar51, dtlint19,  dtlint51,  dtldate19,
          dtlchar20,  dtlchar52, dtlint20,  dtlint52,  dtldate20,
          dtlchar21,  dtlchar53, dtlint21,  dtlint53,  dtldate21,
          dtlchar22,  dtlchar54, dtlint22,  dtlint54,  dtldate22,
          dtlchar23,  dtlchar55, dtlint23,  dtlint55,  dtldate23,
          dtlchar24,  dtlchar56, dtlint24,  dtlint56,  dtldate24,
          dtlchar25,  dtlchar57, dtlint25,  dtlint57,  dtldate25,
          dtlchar26,  dtlchar58, dtlint26,  dtlint58,  dtldate26,
          dtlchar27,  dtlchar59, dtlint27,  dtlint59,  dtldate27,
          dtlchar28,  dtlchar60, dtlint28,  dtlint60,  dtldate28,
          dtlchar29,  dtlchar61, dtlint29,  dtlint61,  dtldate29,
          dtlchar30,  dtlchar62, dtlint30,  dtlint62,  dtldate30,
          dtlchar31,  dtlchar63, dtlint31,  dtlint63,  dtldate31,
          dtlchar32,  dtlchar64, dtlint32,  dtlint64,  dtldate32,
          lastupdate,
          lastuser
        from
          order_detail
        where
          orderid = in_orderid
      ) as order_detail
    from
      order_header
    where
      orderid = in_orderid;

  return l_cursor;
end get_order_info;

end orders;
/
