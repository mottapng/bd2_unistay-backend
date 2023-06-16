import { Router } from "express";
import { userRoutes } from "./user.routes";
import { listingRoutes } from "./listing.routes";

const routes = Router();

routes.use("/users", userRoutes);
routes.use("/listings", listingRoutes);

export { routes };