import { Router } from "express";
import { CreateListingController } from "../modules/listings/useCases/createListing/CreateListingController";
import { GetListingsController } from "../modules/listings/useCases/getListings/GetListingsController";
import { CreateImageController } from "../modules/listings/useCases/createImage/CreateImageController";
import { verifyToken } from "../middlewares/verifyToken";

import multerConfig from '../config/multer';
import multer from "multer";

const createListingController = new CreateListingController();
const getListingsController = new GetListingsController();
const createImageController = new CreateImageController();

const listingRoutes = Router();

listingRoutes.post('/', verifyToken, createListingController.handle);
listingRoutes.post('/:listing/photos', multer(multerConfig).array('photos'), verifyToken, createImageController.handle);
listingRoutes.get('/', getListingsController.handle);

export { listingRoutes }