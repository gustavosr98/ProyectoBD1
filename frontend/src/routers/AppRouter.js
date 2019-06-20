// LIBRERIAS EXTERNAS
import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import createHistory from 'history/createBrowserHistory';

// TIPOS DE PAGINAS - PATRON HOC (HIGH ORDER COMPONENT)
import {PrivateRoute} from './PrivateRoute';
import {PublicRoute} from './PublicRoute';

// PAGINAS
import {Home} from '../pages/Home';
import {NotFoundPage} from '../pages/NotFoundPage';
import {MainPanel} from "../pages/MainPanel";

// MINERAL
import {Mineral} from '../pages/Mineral';
import {MineralAgregar} from '../pages/MineralAgregar';
import {MineralEditar} from '../pages/MineralEditar';

// EMPLEADO
import {Empleados} from "../pages/Empleados";
import {EmpleadosCrear} from "../pages/EmpleadosCrear";

// HORARIO
import {HorarioCrear} from "../pages/HorarioCrear";

// CLIENTE
import {Cliente} from '../pages/Cliente';

export const history = createHistory(); // PARA LLEVAR EL CONTROL DE PAGINAS VISITADAS POR USER

const AppRouter = () => (
  <Router>
    <div>
      <Switch>
        {/* SOLO SE ENTRA EN ALGUNA DE LAS PAGINAS A LA VEZ */}

        {/* PAGINAS QUE CARGAN DESLOGEADO */}
        <PublicRoute path="/" component={Home} exact={true} />
        <PublicRoute path="/mineral" component={Mineral} />
        <PublicRoute path="/cliente" component={Cliente} />
        <PublicRoute path="/dashboard" component={MainPanel} />
        <PublicRoute path="/crear/empleado" component={EmpleadosCrear} />
        <PublicRoute path="/crear/mineral" component={MineralAgregar} />
        <PublicRoute path="/crear/horario" component={HorarioCrear} />
        <PublicRoute path="/editar/mineral/:id" component={MineralEditar} />

        {/* 
          PAGINAS QUE CARGAN LOGEADOS 
          <PrivateRoute path="/dashboard" component={Dashboard} />
          <PrivateRoute path="/pagina1" component={Pagina1} />
          <PrivateRoute path="/pagina2" component={Pagina2} />
          <PrivateRoute path="/minerales/:id" component={EditMineral} />
        */}

        {/* SI SE INGRESA UNA PAGINA QUE NO TIENE SENTIDO */}
        <Route component={NotFoundPage} />
      </Switch>
    </div>
  </Router>
);

export { AppRouter };