# Smart Supply Chain Management System (SSCMS)

A web-based Smart Supply Chain Management System for a preform and cap manufacturing company.

## Features
- **Role-based Access Control**: Different views and permissions for System Admins, Department Heads, and Department Users.
- **Real-time Inventory Tracking**: Track raw materials, packaging, and consumables with low-stock alerts.
- **Production Job Scheduling**: Schedule, track, and complete manufacturing jobs (injection molding, cap molding).
- **Quality Control**: Workflows for approving finished goods before they are available for shipping.
- **Logistics**: Manage outbound shipments, manifests, and tracking status.
- **Inter-Department Requests**: Digital requisition system for materials and transfers.
- **AI-Driven Forecasting**: Simulated demand forecasting and smart reorder suggestions.

## Tech Stack
- **Backend**: Node.js, Express.js
- **Database**: SQLite (`better-sqlite3`)
- **Frontend**: Vanilla HTML/CSS/JavaScript (Glassmorphism design)
- **Authentication**: JWT with HTTP-only cookies

## Running Locally

1. Install dependencies:
   ```bash
   npm install
   ```

2. Start the server (this will automatically initialize and seed the database on first run):
   ```bash
   npm start
   ```

3. Open your browser to `http://localhost:3000`

### Test Accounts
- **Admin**: `admin@sscms.com` / `admin123`
- **Raw Materials Head**: `adewale@sscms.com` / `adewale123`
- **Production Head**: `chioma@sscms.com` / `chioma123`
- **Finished Goods Head**: `emeka@sscms.com` / `emeka123`
- **Shipping Head**: `fatima@sscms.com` / `fatima123`

## License
MIT License
