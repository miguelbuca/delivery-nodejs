import { Router } from "express";
import { CreateClientController } from "./modules/clients/useCases/createClientController";

const routes = Router()


const createClientController = new CreateClientController()

routes.post('/client/',createClientController.handler)

export { routes }