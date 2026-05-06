USE gatilhos;

SHOW TRIGGERS;


SHOW TRIGGERS FROM gatilhos WHERE `TABLE` = 'pedidos';

SHOW TRIGGERS FROM gatilhos WHERE `trigger` like 'tr_atualizar%'