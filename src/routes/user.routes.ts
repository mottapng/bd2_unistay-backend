import { Router } from "express";
import { CreateUserController } from "../modules/users/useCases/createUser/CreateUserController";
import { LoginUserController } from "../modules/users/useCases/loginUser/LoginUserController";
import { GetUserController } from "../modules/users/useCases/getUser/GetUserController";

const createUserController = new CreateUserController();
const loginUserController = new LoginUserController();
const getUserController = new GetUserController();

const userRoutes = Router();

userRoutes.post('/register', createUserController.handle);
userRoutes.post('/login', loginUserController.handle);
userRoutes.get('/:user_id', getUserController.handle);

export { userRoutes }