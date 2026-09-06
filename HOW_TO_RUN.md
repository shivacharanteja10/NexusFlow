# How to Run the Project

## 1. Project Overview
NexusFlow is a modern, fully-featured SaaS platform with a cybersecurity/AI aesthetic. It utilizes Next.js App Router, Tailwind CSS (v4), Drizzle ORM, Clerk Authentication, and next-intl for localization.

## 2. Requirements
- Node.js >= 24
- PostgreSQL (or use the built-in PGLite memory/local server for development)
- A Clerk Account (for authentication)

## 3. Clone Repository
```bash
git clone https://github.com/shivacharanteja10/NexusFlow.git
cd NexusFlow
```

## 4. Installation
```bash
npm install
```

## 5. Environment Variables
Create a `.env` file based on the default requirements:
```
# Authentication (Clerk)
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=your_clerk_publishable_key
CLERK_SECRET_KEY=your_clerk_secret_key
NEXT_PUBLIC_CLERK_SIGN_IN_URL=/sign-in
NEXT_PUBLIC_CLERK_SIGN_UP_URL=/sign-up

# Database (Leave empty for PGLite built-in testing, or specify your PG connection string)
DATABASE_URL=
```

## 6. Database Setup
To generate migrations and push to your database (if using real Postgres):
```bash
npm run db:generate
npm run db:migrate
```

## 7. Run the Project
To run the local development server (this automatically starts a local PGLite database for you):
```bash
npm run dev
```

## 8. Local URLs
- **Main App:** http://localhost:3000
- **Drizzle Studio (DB Viewer):** run `npm run db:studio` (typically on http://localhost:4983)

## 9. Demo/Test Account
If testing the UI without real credentials, you can sign up via Clerk's development instance at the `/sign-up` route locally. 

## 10. Interview Demonstration
1. Open http://localhost:3000 to show the landing page.
2. Demonstrate the modern dark neon aesthetic (my UI contribution).
3. Open http://localhost:3000/api/health to show the added Health Check API.
4. Show the standard API response structure code.
5. Create an account, log in, and view the dashboard to show Clerk auth working natively with the new theme.

## 11. Architecture
- **Frontend/Backend:** Next.js (App Router, Server Actions, API Routes)
- **Database:** PostgreSQL accessed via Drizzle ORM
- **Auth:** Clerk
- **UI:** Tailwind CSS with Radix UI components (Shadcn UI style)
- **I18n:** next-intl

## 12. Troubleshooting
- If you see hydration errors, ensure you aren't using browser extensions that inject HTML (like password managers) on localhost.
- If the DB fails to connect, ensure you are running `npm run dev` instead of just `next dev` (which runs the `db-server:file` prerequisite).

## 13. Verification Checklist
- [x] Application starts (`npm run dev`)
- [x] Main pages work (Landing, Auth, Dashboard)
- [x] Database works (PGLite runs locally)
- [x] Tests pass (`npm run test`)
- [x] Build passes (`npm run build`)
