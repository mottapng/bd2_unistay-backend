import { Router } from "express";
import { userRoutes } from "./user.routes";
import { listingRoutes } from "./listing.routes";
import { conversationRoutes } from "./conversation.routes";
import { MessageRoutes } from "./message.routes";

const routes = Router();

routes.use("/users", userRoutes);
routes.use("/listings", listingRoutes);
routes.use("/conversations", conversationRoutes);
routes.use("/messages", MessageRoutes);

export { routes };