DELIMITER |
CREATE OR REPLACE TRIGGER Ligne_de_frais_update before update
ON ligne FOR EACH ROW
BEGIN

SET new.mt_total = new.nb_km * new.mt_km + new.mt_peage + new.mt_repas + new.mt_hebergement;

END 