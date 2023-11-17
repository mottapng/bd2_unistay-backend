/*
  Warnings:

  - The primary key for the `address` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `conversations` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `images` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `listings` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `message` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `users` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE "conversations" DROP CONSTRAINT "conversations_locator_id_fkey";

-- DropForeignKey
ALTER TABLE "conversations" DROP CONSTRAINT "conversations_renter_id_fkey";

-- DropForeignKey
ALTER TABLE "images" DROP CONSTRAINT "images_listing_id_fkey";

-- DropForeignKey
ALTER TABLE "listings" DROP CONSTRAINT "listings_address_id_fkey";

-- DropForeignKey
ALTER TABLE "listings" DROP CONSTRAINT "listings_type_id_fkey";

-- DropForeignKey
ALTER TABLE "listings" DROP CONSTRAINT "listings_user_id_fkey";

-- DropForeignKey
ALTER TABLE "message" DROP CONSTRAINT "message_conversation_id_fkey";

-- DropForeignKey
ALTER TABLE "message" DROP CONSTRAINT "message_user_id_fkey";

-- AlterTable
ALTER TABLE "address" DROP CONSTRAINT "address_pkey",
ALTER COLUMN "address_id" DROP DEFAULT,
ALTER COLUMN "address_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "address_pkey" PRIMARY KEY ("address_id");
DROP SEQUENCE "address_address_id_seq";

-- AlterTable
ALTER TABLE "conversations" DROP CONSTRAINT "conversations_pkey",
ALTER COLUMN "conversation_id" DROP DEFAULT,
ALTER COLUMN "conversation_id" SET DATA TYPE TEXT,
ALTER COLUMN "renter_id" SET DATA TYPE TEXT,
ALTER COLUMN "locator_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "conversations_pkey" PRIMARY KEY ("conversation_id");
DROP SEQUENCE "conversations_conversation_id_seq";

-- AlterTable
ALTER TABLE "images" DROP CONSTRAINT "images_pkey",
ALTER COLUMN "image_id" DROP DEFAULT,
ALTER COLUMN "image_id" SET DATA TYPE TEXT,
ALTER COLUMN "listing_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "images_pkey" PRIMARY KEY ("image_id");
DROP SEQUENCE "images_image_id_seq";

-- AlterTable
ALTER TABLE "listings" DROP CONSTRAINT "listings_pkey",
ALTER COLUMN "listing_id" DROP DEFAULT,
ALTER COLUMN "listing_id" SET DATA TYPE TEXT,
ALTER COLUMN "user_id" SET DATA TYPE TEXT,
ALTER COLUMN "address_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "listings_pkey" PRIMARY KEY ("listing_id");
DROP SEQUENCE "listings_listing_id_seq";

-- AlterTable
ALTER TABLE "message" DROP CONSTRAINT "message_pkey",
ALTER COLUMN "message_id" DROP DEFAULT,
ALTER COLUMN "message_id" SET DATA TYPE TEXT,
ALTER COLUMN "conversation_id" SET DATA TYPE TEXT,
ALTER COLUMN "user_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "message_pkey" PRIMARY KEY ("message_id");
DROP SEQUENCE "message_message_id_seq";

-- AlterTable
ALTER TABLE "users" DROP CONSTRAINT "users_pkey",
ALTER COLUMN "user_id" DROP DEFAULT,
ALTER COLUMN "user_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "users_pkey" PRIMARY KEY ("user_id");
DROP SEQUENCE "users_user_id_seq";

-- AddForeignKey
ALTER TABLE "listings" ADD CONSTRAINT "listings_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("user_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "listings" ADD CONSTRAINT "listings_type_id_fkey" FOREIGN KEY ("type_id") REFERENCES "listing_types"("type_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "listings" ADD CONSTRAINT "listings_address_id_fkey" FOREIGN KEY ("address_id") REFERENCES "address"("address_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "images" ADD CONSTRAINT "images_listing_id_fkey" FOREIGN KEY ("listing_id") REFERENCES "listings"("listing_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "conversations" ADD CONSTRAINT "conversations_renter_id_fkey" FOREIGN KEY ("renter_id") REFERENCES "users"("user_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "conversations" ADD CONSTRAINT "conversations_locator_id_fkey" FOREIGN KEY ("locator_id") REFERENCES "users"("user_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "message" ADD CONSTRAINT "message_conversation_id_fkey" FOREIGN KEY ("conversation_id") REFERENCES "conversations"("conversation_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "message" ADD CONSTRAINT "message_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("user_id") ON DELETE CASCADE ON UPDATE CASCADE;
