/*
  Warnings:

  - You are about to drop the column `usename` on the `deliveryman` table. All the data in the column will be lost.
  - Added the required column `username` to the `deliveryman` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_deliveryman" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL
);
INSERT INTO "new_deliveryman" ("id", "password") SELECT "id", "password" FROM "deliveryman";
DROP TABLE "deliveryman";
ALTER TABLE "new_deliveryman" RENAME TO "deliveryman";
CREATE UNIQUE INDEX "deliveryman_username_key" ON "deliveryman"("username");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
