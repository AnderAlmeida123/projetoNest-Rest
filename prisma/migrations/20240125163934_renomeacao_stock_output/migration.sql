/*
  Warnings:

  - You are about to drop the `StockOutpout` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "StockOutpout" DROP CONSTRAINT "StockOutpout_productId_fkey";

-- DropTable
DROP TABLE "StockOutpout";

-- CreateTable
CREATE TABLE "StockOutput" (
    "id" SERIAL NOT NULL,
    "productId" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "StockOutput_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "StockOutput" ADD CONSTRAINT "StockOutput_productId_fkey" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
