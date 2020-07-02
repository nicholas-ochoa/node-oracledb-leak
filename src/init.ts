import { database } from './database';
import { runTest } from './runTest';

export async function init(): Promise<void> {
  setTimeout(() => {
    console.log('done');
  }, 120000);

  try {
    console.log('init db');
    await database();

    console.log('running tests:');

    // await runTest(1);

    runTest(1);
    runTest(2);

  } catch (err) {
    console.error(`startup error:`, err);
    process.exit(1);
    return;
  }
}
