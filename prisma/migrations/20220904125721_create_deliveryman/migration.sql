-- CreateTable
CREATE TABLE "Deliveryman" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "usename" TEXT NOT NULL,
    "password" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Deliveryman_usename_key" ON "Deliveryman"("usename");
