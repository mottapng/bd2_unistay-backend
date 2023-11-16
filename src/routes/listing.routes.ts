import { Router } from "express";
import { CreateListingController } from "../modules/listings/useCases/createListing/CreateListingController";
import { GetUserListingsController } from "../modules/listings/useCases/getUserListings/GetUserListingsController";
import { GetListingsController } from "../modules/listings/useCases/getListings/GetListingsController";
import { GetListingController } from "../modules/listings/useCases/getListing/GetListingController";
import { CreateImageController } from "../modules/listings/useCases/createImage/CreateImageController";
import { DeleteListingController } from "../modules/listings/useCases/deleteListing/DeleteListingController";
import { verifyToken } from "../middlewares/verifyToken";

import multerConfig from '../config/multer';
import multer from "multer";
const createListingController = new CreateListingController();
const getListingsController = new GetListingsController();
const getUserListingsController = new GetUserListingsController();
const getListingController = new GetListingController();
const createImageController = new CreateImageController();
const deleteListingController = new DeleteListingController();

const listingRoutes = Router();

listingRoutes.post('/', verifyToken, createListingController.handle);
listingRoutes.post('/:listing_id/photos', multer(multerConfig).array('photos'), verifyToken, createImageController.handle);
listingRoutes.get('/', getListingsController.handle);
listingRoutes.get('/user/:user_id', getUserListingsController.handle)
listingRoutes.get('/:listing_id', getListingController.handle);
listingRoutes.delete('/:listing_id', verifyToken, deleteListingController.handle);

export { listingRoutes }