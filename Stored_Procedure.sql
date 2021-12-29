CREATE DEFINER=`root`@`localhost` PROCEDURE `Limpa_Pedidos`()
BEGIN
	SET SQL_SAFE_UPDATES = 0;
	DELETE FROM pedidos WHERE pago ='Não';
END