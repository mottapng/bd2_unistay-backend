import { Router } from "express";

import { verifyToken } from "../middlewares/verifyToken";
import { CreateMessageController } from "../modules/messages/useCases/createMessage/CreateMessageController";
import { GetMessagesController } from "../modules/messages/useCases/getMessages/GetMessagesController";

const getMessagesController = new GetMessagesController();
const createMessageController = new CreateMessageController();

const MessageRoutes = Router();

MessageRoutes.get('/:conversation_id', verifyToken, getMessagesController.handle);
MessageRoutes.post('/:conversation_id', verifyToken, createMessageController.handle);

export { MessageRoutes }