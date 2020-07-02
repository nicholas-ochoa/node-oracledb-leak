import OracleDB from 'oracledb';

export async function orderInfo(connection: OracleDB.Connection) {
  try {
    const sql = `
      begin
        :cursor := orders.get_order_info(:orderid);
      end;
    `;

    const binds: OracleDB.BindParameters = {
      cursor: {
        type: OracleDB.CURSOR,
        dir: OracleDB.BIND_OUT,
      },
      orderid: 12345,
    };

    const result: any = await connection.execute(sql, binds);

    const hdr_data: any = await result.outBinds.cursor.getRow();
    const dtl_data: any = await hdr_data.ORDER_DETAIL.getRow();

    console.log(`fetched order hdr ${hdr_data.ORDERID} dtl ${dtl_data.ORDERID}`);
  } catch (err) {
    console.error(err);
  }
}
