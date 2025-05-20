/*
  Warnings:

  - Added the required column `city` to the `profile` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `profile`
    ADD COLUMN `city` VARCHAR(191) NOT NULL;

-- CreateIndex
CREATE INDEX `profile_id_city_name_idx` ON `profile` (`id`, `city`, `name`);
