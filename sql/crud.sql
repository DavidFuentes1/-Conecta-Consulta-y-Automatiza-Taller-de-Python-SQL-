
 create table tb_unidades_medidas(
    codigo_ca integer,
    descripcion character(30),
    constraint pk_unidades_medidas primary key(codigo_ca)
)

drop table tb_unidades_medidas

INSERT INTO tb_categorias(codigo_ca, descripcion_ca)
VALUES (5, 'NUEVO DATO')

