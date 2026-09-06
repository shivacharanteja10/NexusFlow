import { sql } from 'drizzle-orm';
import { NextResponse } from 'next/server';
import { db } from '@/libs/DB';

export async function GET() {
  try {
    const result = await db.execute(sql`SELECT 1 as healthy`);
    const isHealthy = result && result.length > 0;

    if (isHealthy) {
      return NextResponse.json({ status: 'ok', database: 'connected', timestamp: new Date().toISOString() });
    }

    return NextResponse.json({ status: 'error', database: 'disconnected', timestamp: new Date().toISOString() }, { status: 503 });
  } catch (error) {
    return NextResponse.json({ status: 'error', database: 'error', message: (error as Error).message, timestamp: new Date().toISOString() }, { status: 503 });
  }
}
