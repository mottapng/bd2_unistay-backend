/*
  Warnings:

  - Added the required column `qnt_bathrooms` to the `listings` table without a default value. This is not possible if the table is not empty.
  - Added the required column `qnt_bedrooms` to the `listings` table without a default value. This is not possible if the table is not empty.
  - Added the required column `qnt_garage` to the `listings` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "listings" ADD COLUMN     "qnt_bathrooms" INTEGER NOT NULL,
ADD COLUMN     "qnt_bedrooms" INTEGER NOT NULL,
ADD COLUMN     "qnt_garage" INTEGER NOT NULL;
