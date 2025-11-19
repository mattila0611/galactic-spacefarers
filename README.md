# Run the Project

Use one of the following setups to start the Galactic Spacefarer service.

## Option 1: VS Code Dev Container

1. Install the **Dev Containers** extension in VS Code.
2. Open the project folder (`File > Open Folder`).
3. When prompted, reopen in the dev container or choose `Dev Containers: Reopen in Container` from the Command Palette.
4. The container automatically installs dependencies. Once it finishes, open a terminal inside VS Code and run:
   ```bash
   cds watch
   ```
5. Navigate to the URL shown in the terminal to explore the service and UI.

## Option 2: Local Environment

1. Ensure Node.js 18+ is installed on your machine.
2. From the project root, install dependencies and deploy the SQLite database:
   ```bash
   npm run init-project
   ```
3. Start the CAP server in watch mode:
   ```bash
   npx cds watch
   ```
4. Open the provided URL to interact with the application.
