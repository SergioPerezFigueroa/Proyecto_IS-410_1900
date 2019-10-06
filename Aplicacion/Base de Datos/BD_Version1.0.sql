alter table administradores
add constraint UQ_administradores_idpersona
		unique (idpersona);