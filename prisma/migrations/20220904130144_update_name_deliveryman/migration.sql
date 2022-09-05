/*
  Warnings:

  - You are about to drop the `Deliveryman` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Deliveryman";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "deliveryman" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "usename" TEXT NOT NULL,
    "password" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "deliveryman_usename_key" ON "deliveryman"("usename");