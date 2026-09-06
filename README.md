# NexusFlow

## Overview
NexusFlow is a modern, fully-featured SaaS platform designed for the Cybersecurity and AI domains. It features a sleek, high-contrast dark aesthetic optimized for data-dense workflows, alongside a robust technical foundation built for performance, scale, and excellent developer experience.

## Features Actually Implemented
- **Landing Page & Authentication:** Fully integrated Clerk authentication with localized landing pages.
- **Dashboard UI:** A secure user dashboard area for protected workflows.
- **Health Monitoring API:** A dedicated database and service health check endpoint for container orchestration readiness.
- **Standardized API Responses:** Utility wrappers to guarantee consistent JSON contracts across all backend routes.
- **Cybersecurity/AI UI Redesign:** A completely custom deep dark theme with neon blue/cyan accents tailored for the project's domain.

## Technology Stack
- **Framework:** Next.js (App Router)
- **Language:** TypeScript
- **Styling:** Tailwind CSS (v4) & Radix UI
- **Database:** PostgreSQL & Drizzle ORM
- **Authentication:** Clerk
- **Internationalization:** next-intl
- **Testing:** Vitest & Playwright

## Architecture
NexusFlow leverages the Next.js App Router for full-stack React development. It uses Server Components for performance and Server Actions for data mutations. The data layer uses Drizzle ORM connected to a PostgreSQL database (with a local PGLite fallback for rapid testing).

## Installation Summary
```bash
git clone https://github.com/shivacharanteja10/NexusFlow.git
cd NexusFlow
npm install
npm run dev
```

For complete setup instructions, environment variables, and demonstration flows, please see the [HOW_TO_RUN.md](./HOW_TO_RUN.md) file.

## Testing
To run the automated test suite:
```bash
npm run test       # Unit Tests (Vitest)
npm run test:e2e   # E2E Tests (Playwright)
```

## My Contributions
I actively enhanced this boilerplate by:
1. **Health Check API:** Engineered a `/api/health` endpoint that actively pings the database, providing standard health monitoring capabilities required for modern deployments.
2. **API Standardization:** Built standard response utilities (`apiResponse.ts`) to enforce consistent JSON payloads across the backend, improving frontend reliability.
3. **UI/UX Re-design:** Redesigned the color scheme and CSS variables to replace the generic theme with a targeted, professional Cybersecurity/AI aesthetic (deep dark backgrounds with high-contrast neon accents).

For more detailed technical explanations, see [CONTRIBUTIONS.md](./CONTRIBUTIONS.md).

## Upstream Project
This repository is a customized and derived version of the open-source **SaaS Boilerplate** by Ixartz.
Original Repository: [https://github.com/ixartz/SaaS-Boilerplate](https://github.com/ixartz/SaaS-Boilerplate)

## License
This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
All upstream attribution and copyright notices are preserved.
