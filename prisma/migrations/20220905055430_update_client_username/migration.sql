/*
  Warnings:

  - You are about to drop the column `usename` on the `clients` table. All the data in the column will be lost.
  - Added the required column `username` to the `clients` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_clients" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL
);
INSERT INTO "new_clients" ("id", "password") SELECT "id", "password" FROM "clients";
DROP TABLE "clients";
ALTER TABLE "new_clients" RENAME TO "clients";
CREATE UNIQUE INDEX "clients_username_key" ON "clients"("username");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
