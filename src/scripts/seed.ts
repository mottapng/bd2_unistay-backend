const { PrismaClient } = require("@prisma/client");

const database = new PrismaClient();

async function main() {
  try {
    await database.listing_types.createMany({
      data: [
        { type: "República" },
        { type: "Apartamento" },
        { type: "Quarto" },
        { type: "Casa" },
        { type: "Kitnet" }
      ]
    });

    console.log("Success");
  } catch (error) {
    console.log("Error seeding the database listing types", error);
  } finally {
    await database.$disconnect();
  }
}

main();