-- CreateTable
CREATE TABLE "StockInput" (
    "id" SERIAL NOT NULL,
    "productId" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "StockInput_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "StockOutpout" (
    "id" SERIAL NOT NULL,
    "productId" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "StockOutpout_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "StockInput" ADD CONSTRAINT "StockInput_productId_fkey" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "StockOutpout" ADD CONSTRAINT "StockOutpout_productId_fkey" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
