import { Router } from "express";

import { verifyToken } from "../middlewares/verifyToken";
import { GetOrCreateConversationController } from "../modules/conversations/useCases/getOrCreateConversation/GetOrCreateConversationController";
import { GetAllConversationsController } from "../modules/conversations/useCases/getAllConversations/GetAllConversationsController";

const getOrCreateConversationController = new GetOrCreateConversationController();
const getAllConversationsController = new GetAllConversationsController();

const conversationRoutes = Router();

conversationRoutes.get('/:userTwo', verifyToken, getOrCreateConversationController.handle);
conversationRoutes.get('/', verifyToken, getAllConversationsController.handle);

export { conversationRoutes }