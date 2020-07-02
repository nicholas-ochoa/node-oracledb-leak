import OracleDB from 'oracledb';
import { orderInfo } from './orderInfo';

export async function runTest(identifier: number) {
  let connection: OracleDB.Connection;

  const iterations = 250;

  try {
    connection = await OracleDB.getConnection('testpool');

    console.log(`test ${identifier} starting`);

    for (let i = 0; i < iterations; i++) {
      console.log(`test ${identifier} request ${i}`);
      await orderInfo(connection);
    }

    console.log(`test ${identifier} complete`);
  } catch (err) {
    console.error(err);
  } finally {
    if (connection) {
      await connection.close();
    }
  }
}
