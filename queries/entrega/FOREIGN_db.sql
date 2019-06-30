/* AQUI TODOS LOS CONSTRAINT DE LOS FOREIGN KEY DE LAS EN ORDEN DE MODELO LOGICO */
/* ES DECIR LAS RELACIONES */

ALTER TABLE CARA_TIPO 
ADD CONSTRAINT fk_caracteritica_id FOREIGN KEY (caracteritica_id) REFERENCES CARACTERISTICA (c_id_caracteristica)  ON DELETE CASCADE;

ALTER TABLE CARA_TIPO 
ADD CONSTRAINT fk_tipo_yacimiento_id FOREIGN KEY (tipo_yacimiento_id) REFERENCES TIPO_YACIMIENTO (t_id_tipo_yacimiento) ON DELETE CASCADE;

ALTER TABLE CLIENTE
ADD CONSTRAINT fk_lugar_id FOREIGN KEY (lugar_id) REFERENCES LUGAR (l_id_lugar) ON DELETE CASCADE;

ALTER TABLE COMPANIA
ADD CONSTRAINT fk_lugar_id FOREIGN KEY (lugar_id) REFERENCES LUGAR (l_id_lugar) ON DELETE CASCADE;

ALTER TABLE COMPANIA
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE EMPLEADO
ADD CONSTRAINT fk_cargo_id FOREIGN KEY (cargo_id) REFERENCES CARGO (c_id_cargo) ON DELETE CASCADE;

ALTER TABLE EMPLEADO
ADD CONSTRAINT fk_lugar_id FOREIGN KEY (lugar_id) REFERENCES LUGAR (l_id_lugar) ON DELETE CASCADE;

ALTER TABLE EMPLEADO
ADD CONSTRAINT estado_id FOREIGN KEY (estado_id) REFERENCES ESTADO (e_id_estado) ON DELETE CASCADE;

ALTER TABLE EQUIPO
ADD CONSTRAINT fk_maquinaria_id FOREIGN KEY (maquinaria_id) REFERENCES MAQUINARIA (m_id_maquinaria) ON DELETE CASCADE;

ALTER TABLE ETAPA
ADD CONSTRAINT fk_estado_id FOREIGN KEY (estado_id) REFERENCES ESTADO (e_id_estado) ON DELETE CASCADE;

ALTER TABLE ETAPA
ADD CONSTRAINT fk_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES PROYECTO (p_id_proyecto) ON DELETE CASCADE;

ALTER TABLE ETAPA
ADD CONSTRAINT fk_etapa_configuracion_id FOREIGN KEY (etapa_configuracion_id) REFERENCES ETAPA_CONFIGURACION (e_id_etapa_configuracion) ON DELETE CASCADE;

ALTER TABLE ETAPA_CONFIGURACION
ADD CONSTRAINT fk_yacimiento_configuracion_id FOREIGN KEY (yacimiento_configuracion_id) REFERENCES YACIMIENTO_CONFIGURACION (y_id_yacimiento_configuracion) ON DELETE CASCADE;

ALTER TABLE FASE
ADD CONSTRAINT fk_etapa_id FOREIGN KEY (etapa_id) REFERENCES ETAPA (e_id_etapa) ON DELETE CASCADE;

ALTER TABLE FASE
ADD CONSTRAINT fk_fase_configuracion_id FOREIGN KEY (fase_configuracion_id) REFERENCES FASE_CONFIGURACION (f_id_fase_configuracion) ON DELETE CASCADE;

ALTER TABLE FASE
ADD CONSTRAINT fk_estado_id FOREIGN KEY (estado_id) REFERENCES ESTADO (e_id_estado) ON DELETE CASCADE;

ALTER TABLE FASE_CARG
ADD CONSTRAINT fk_fase_configuracion_id FOREIGN KEY (fase_configuracion_id) REFERENCES FASE_CONFIGURACION (f_id_fase_configuracion) ON DELETE CASCADE;

ALTER TABLE FASE_CARG
ADD CONSTRAINT fk_cargo_id FOREIGN KEY (cargo_id) REFERENCES CARGO (c_id_cargo) ON DELETE CASCADE;

ALTER TABLE FASE_CONFIGURACION
ADD CONSTRAINT fk_etapa_configuracion_id FOREIGN KEY (etapa_configuracion_id) REFERENCES ETAPA_CONFIGURACION (e_id_etapa_configuracion) ON DELETE CASCADE;

ALTER TABLE FASE_CONFIGURACION
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE FASE_EMPL
ADD CONSTRAINT fk_empleado_id FOREIGN KEY (empleado_id) REFERENCES EMPLEADO (e_id_empleado) ON DELETE CASCADE;

ALTER TABLE FASE_EMPL
ADD CONSTRAINT fk_fase_id FOREIGN KEY (fase_id) REFERENCES FASE (f_id_fase) ON DELETE CASCADE;

ALTER TABLE FASE_EMPL
ADD CONSTRAINT fk_horario_id FOREIGN KEY (horario_id) REFERENCES HORARIO (h_id_horario) ON DELETE CASCADE;

ALTER TABLE FASE_EMPL
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE FASE_EQUI
ADD CONSTRAINT fk_equipo_id FOREIGN KEY (equipo_id) REFERENCES EQUIPO (e_id_equipo) ON DELETE CASCADE;

ALTER TABLE FASE_EQUI
ADD CONSTRAINT fk_fase_id FOREIGN KEY (fase_id) REFERENCES FASE (f_id_fase) ON DELETE CASCADE;

ALTER TABLE FASE_EQUI
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE FASE_MAQU
ADD CONSTRAINT fk_fase_configuracion_id FOREIGN KEY (fase_configuracion_id) REFERENCES FASE_CONFIGURACION (f_id_fase_configuracion) ON DELETE CASCADE;

ALTER TABLE FASE_MAQU
ADD CONSTRAINT fk_maquinaria_id FOREIGN KEY (maquinaria_id) REFERENCES MAQUINARIA (m_id_maquinaria) ON DELETE CASCADE;

ALTER TABLE GASTO_ADICIONAL
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE GASTO_ADICIONAL
ADD CONSTRAINT fk_fase_id FOREIGN KEY (fase_id) REFERENCES FASE (f_id_fase) ON DELETE CASCADE;

ALTER TABLE INVENTARIO
ADD CONSTRAINT fk_mineral_id FOREIGN KEY (mineral_id) REFERENCES MINERAL (m_id_mineral) ON DELETE CASCADE;

ALTER TABLE INVENTARIO
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE INVENTARIO
ADD CONSTRAINT fk_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES PROYECTO (p_id_proyecto) ON DELETE CASCADE;

ALTER TABLE INVENTARIO
ADD CONSTRAINT fk_solicitud_id FOREIGN KEY (solicitud_id) REFERENCES SOLICITUD (s_id_solicitud) ON DELETE CASCADE;

ALTER TABLE INVENTARIO
ADD CONSTRAINT fk_pedido_id FOREIGN KEY (pedido_id) REFERENCES PEDIDO (p_id_pedido) ON DELETE CASCADE;

ALTER TABLE JORNADA
ADD CONSTRAINT fk_horario_id FOREIGN KEY (horario_id) REFERENCES HORARIO (h_id_horario) ON DELETE CASCADE;

ALTER TABLE LUGAR
ADD CONSTRAINT fk_lugar_id FOREIGN KEY (lugar_id) REFERENCES LUGAR (l_id_lugar) ON DELETE CASCADE;

ALTER TABLE MINE_MINE
ADD CONSTRAINT fk_mineral_id_compone FOREIGN KEY (mineral_id_compone) REFERENCES MINERAL (m_id_mineral) ON DELETE CASCADE;

ALTER TABLE MINE_MINE
ADD CONSTRAINT fk_mineral_id_compuesto FOREIGN KEY (mineral_id_compuesto) REFERENCES MINERAL (m_id_mineral) ON DELETE CASCADE;

ALTER TABLE MINE_YACI
ADD CONSTRAINT fk_yacimiento_configuracion_id FOREIGN KEY (yacimiento_configuracion_id) REFERENCES YACIMIENTO_CONFIGURACION (y_id_yacimiento_configuracion) ON DELETE CASCADE;

ALTER TABLE MINE_YACI
ADD CONSTRAINT fk_mineral_id FOREIGN KEY (mineral_id) REFERENCES MINERAL (m_id_mineral) ON DELETE CASCADE;

ALTER TABLE MINE_YACI
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE PEDI_ESTA
ADD CONSTRAINT fk_estado_id FOREIGN KEY (estado_id) REFERENCES ESTADO (e_id_estado) ON DELETE CASCADE;

ALTER TABLE PEDI_ESTA
ADD CONSTRAINT fk_pedido_id FOREIGN KEY (pedido_id) REFERENCES PEDIDO (p_id_pedido) ON DELETE CASCADE;

ALTER TABLE PEDI_PROD
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE PEDI_PROD
ADD CONSTRAINT fk_producto_id FOREIGN KEY (producto_id) REFERENCES PRODUCTO (p_id_producto) ON DELETE CASCADE;

ALTER TABLE PEDI_PROD
ADD CONSTRAINT fk_pedido_id FOREIGN KEY (pedido_id) REFERENCES PEDIDO (p_id_pedido) ON DELETE CASCADE;

ALTER TABLE PEDI_TIPO
ADD CONSTRAINT fk_credito_id FOREIGN KEY (credito_id) REFERENCES CREDITO (c_id_credito) ON DELETE CASCADE;

ALTER TABLE PEDI_TIPO
ADD CONSTRAINT fk_debito_id FOREIGN KEY (debito_id) REFERENCES DEBITO (d_id_debito) ON DELETE CASCADE;

ALTER TABLE PEDI_TIPO
ADD CONSTRAINT fk_transferencia_id FOREIGN KEY (transferencia_id) REFERENCES TRANSFERENCIA (t_id_transferencia) ON DELETE CASCADE;

ALTER TABLE PEDI_TIPO
ADD CONSTRAINT fk_cheque_id FOREIGN KEY (cheque_id) REFERENCES CHEQUE (c_id_cheque) ON DELETE CASCADE;

ALTER TABLE PEDI_TIPO
ADD CONSTRAINT fk_pedido_id FOREIGN KEY (pedido_id) REFERENCES PEDIDO (p_id_pedido) ON DELETE CASCADE;

ALTER TABLE PEDI_TIPO
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE PEDIDO
ADD CONSTRAINT fk_cliente_id FOREIGN KEY (cliente_id) REFERENCES CLIENTE (c_id_cliente) ON DELETE CASCADE;

ALTER TABLE PROD_COMP
ADD CONSTRAINT fk_compania_id FOREIGN KEY (compania_id) REFERENCES COMPANIA (c_id_compania) ON DELETE CASCADE;

ALTER TABLE PROD_COMP
ADD CONSTRAINT fk_producto_id FOREIGN KEY (producto_id) REFERENCES PRODUCTO (p_id_producto) ON DELETE CASCADE;

ALTER TABLE PROD_COMP
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE PROD_SOLI
ADD CONSTRAINT fk_solicitud_id FOREIGN KEY (solicitud_id) REFERENCES SOLICITUD (s_id_solicitud) ON DELETE CASCADE;

ALTER TABLE PROD_SOLI
ADD CONSTRAINT fk_prod_comp_id FOREIGN KEY (prod_comp_id) REFERENCES PROD_COMP (p_id_prod_comp) ON DELETE CASCADE;

ALTER TABLE PROD_SOLI
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE PRODUCTO
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE PRODUCTO
ADD CONSTRAINT fk_mineral_id FOREIGN KEY (mineral_id) REFERENCES MINERAL (m_id_mineral) ON DELETE CASCADE;

ALTER TABLE PROYECTO
ADD CONSTRAINT fk_estado_id FOREIGN KEY (estado_id) REFERENCES ESTADO (e_id_estado) ON DELETE CASCADE;

ALTER TABLE PROYECTO
ADD CONSTRAINT fk_yacimiento_id FOREIGN KEY (yacimiento_id) REFERENCES YACIMIENTO (y_id_yacimiento) ON DELETE CASCADE;

ALTER TABLE PROYECTO
ADD CONSTRAINT fk_pedido_id FOREIGN KEY (pedido_id) REFERENCES PEDIDO (p_id_pedido) ON DELETE CASCADE;

ALTER TABLE ROL_ACCI
ADD CONSTRAINT fk_rol_id FOREIGN KEY (rol_id) REFERENCES ROL (r_id_rol) ON DELETE CASCADE;

ALTER TABLE ROL_ACCI
ADD CONSTRAINT fk_accion_id FOREIGN KEY (accion_id) REFERENCES ACCION (a_id_accion) ON DELETE CASCADE;

ALTER TABLE SECT_MINE
ADD CONSTRAINT fk_mineral_id FOREIGN KEY (mineral_id) REFERENCES MINERAL (m_id_mineral) ON DELETE CASCADE;

ALTER TABLE SECT_MINE
ADD CONSTRAINT fk_sector_uso_id FOREIGN KEY (sector_uso_id) REFERENCES SECTOR_USO (s_id_sector_uso) ON DELETE CASCADE;

ALTER TABLE SOLICITUD
ADD CONSTRAINT fk_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES PROYECTO (p_id_proyecto) ON DELETE CASCADE;

ALTER TABLE SOLICITUD
ADD CONSTRAINT fk_estado_id FOREIGN KEY (estado_id) REFERENCES ESTADO (e_id_estado) ON DELETE CASCADE;

ALTER TABLE USUARIO
ADD CONSTRAINT fk_empleado_id FOREIGN KEY (empleado_id) REFERENCES EMPLEADO (e_id_empleado) ON DELETE CASCADE;

ALTER TABLE USUARIO
ADD CONSTRAINT fk_rol_id FOREIGN KEY (rol_id) REFERENCES ROL (r_id_rol) ON DELETE CASCADE;

ALTER TABLE YACIMIENTO
ADD CONSTRAINT fk_yacimiento_configuracion_id FOREIGN KEY (yacimiento_configuracion_id) REFERENCES YACIMIENTO_CONFIGURACION (y_id_yacimiento_configuracion) ON DELETE CASCADE;

ALTER TABLE YACIMIENTO
ADD CONSTRAINT fk_tipo_yacimiento_id FOREIGN KEY (tipo_yacimiento_id) REFERENCES TIPO_YACIMIENTO (t_id_tipo_yacimiento) ON DELETE CASCADE;

ALTER TABLE YACIMIENTO
ADD CONSTRAINT fk_lugar_id FOREIGN KEY (lugar_id) REFERENCES LUGAR (l_id_lugar) ON DELETE CASCADE;

ALTER TABLE YACIMIENTO
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;

ALTER TABLE YACIMIENTO_CONFIGURACION
ADD CONSTRAINT fk_mineral_id FOREIGN KEY (mineral_id) REFERENCES MINERAL (m_id_mineral) ON DELETE CASCADE;

ALTER TABLE YACIMIENTO_CONFIGURACION
ADD CONSTRAINT fk_unidad_id FOREIGN KEY (unidad_id) REFERENCES UNIDAD (u_id_unidad) ON DELETE CASCADE;