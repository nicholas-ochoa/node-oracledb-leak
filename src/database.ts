import OracleDB from 'oracledb';

export async function database(): Promise<void> {
  // increase number of threads available
  // for the connection pool
  process.env.UV_THREADPOOL_SIZE = '100';

  try {
    const pool = await OracleDB.getPool('testpool');
    await pool.close();
  } catch (err) {}

  // default options
  OracleDB.outFormat = OracleDB.OUT_FORMAT_OBJECT;
  OracleDB.fetchAsString = [OracleDB.CLOB];

  const options: OracleDB.PoolAttributes = {
    user: 'testdb',
    password: 'testdb',
    connectString: '172.30.40.212:1521/test',
    poolAlias: 'testpool',
    poolMin: 1,
    poolMax: 100,
    poolIncrement: 5,
    poolTimeout: 600,
    _enableStats: true,
  };

  await OracleDB.createPool(options);
}
