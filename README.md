# NearMedico

**NearMedico** is a full-stack, mobile-first web application designed to seamlessly connect local pharmacies with everyday consumers.

## Architecture

This project is divided into two distinct parts:
1.  **Consumer Portal (`/consumer`)**: A beautiful, pastel-green public-facing website where everyday users can search for medicines and immediately see exactly which local pharmacies have it "IN STOCK".
2.  **Shopkeeper View (`/`)**: A dedicated dashboard for pharmacy owners. Sellers log in, verify their state drug licenses in the **Shop Details** tab (triggering a "Legally Verified" badge), and manage their inventory using an intuitive + / - counter system.

The application leverages a lightweight **Node.js Express Backend** connected to a local **SQLite Database (`nearmedico.db`)** to ensure data portability, paired with a blazing-fast **Vite React Frontend** utilizing Tailwind CSS.

## Getting Started

To run the entire application smoothly on your local machine:

1.  Open your file explorer to this project directory (`d:\shi`).
2.  Double-click **`start_nearmedico.bat`**.

Alternatively, if you prefer using the terminal manually:

### Terminal 1 (Backend API)
```bash
cd backend
npm install
node server.js
```

### Terminal 2 (React Frontend)
```bash
cd frontend
npm install
npm run dev
```

## How to Test
1.  **Shopkeeper Flow:** Navigate to `http://localhost:5173/`. Register a new account, log in, go to the **Shop Details** to verify your drug license, and add medicines like "Dolo 650" to your **Inventory**.
2.  **Consumer Flow:** Navigate to `http://localhost:5173/consumer` (in a private window, or without logging in). Search for "Dolo". You will immediately see the pharmacy you registered and whether the item is in stock based on your live updates!
