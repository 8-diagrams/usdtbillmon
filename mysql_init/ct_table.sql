
CREATE TABLE `addresslist` (
        `id` INT(11) NOT NULL AUTO_INCREMENT,
        `addr` VARCHAR(64) NOT NULL COLLATE 'utf8mb4_general_ci',
        `update_time` TIMESTAMP(6) NULL DEFAULT NULL,
        `last_transaction` VARCHAR(64) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
        `enabled` INT(11) NULL DEFAULT '1',
        `update_time_ts` VARCHAR(32) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
        PRIMARY KEY (`id`) USING BTREE,
        UNIQUE INDEX `addr` (`addr`) USING BTREE,
        INDEX `enabled` (`enabled`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=19
;

CREATE TABLE `monitortokens` (
        `id` INT(11) NOT NULL AUTO_INCREMENT,
        `addr` VARCHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
        `token` VARCHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
        `update_time` TIMESTAMP NULL DEFAULT NULL,
        `last_finger` VARCHAR(64) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
        `last_balance` DECIMAL(20,6) NOT NULL DEFAULT '0.000000',
        PRIMARY KEY (`id`) USING BTREE,
        INDEX `addr` (`addr`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `trans` (
        `id` INT(11) NOT NULL AUTO_INCREMENT,
        `hashid` VARCHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
        `addr` VARCHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
        `token` VARCHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
        `peer_addr` VARCHAR(64) NOT NULL COLLATE 'utf8mb4_general_ci',
        `trans_time` TIMESTAMP(6) NULL DEFAULT NULL,
        `trans_time_ts` VARCHAR(32) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
        `balance` DECIMAL(20,8) NOT NULL DEFAULT '0.00000000',
        `amount` DECIMAL(20,8) NOT NULL DEFAULT '0.00000000',
        PRIMARY KEY (`id`) USING BTREE,
        UNIQUE INDEX `hashid` (`addr`, `hashid`) USING BTREE,
        INDEX `addr` (`addr`) USING BTREE,
        INDEX `peer_addr` (`peer_addr`) USING BTREE,
        INDEX `fullidx` (`addr`, `hashid`, `token`, `amount`, `peer_addr`, `trans_time`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=307639
;


CREATE TABLE `useraddrs` (
        `id` INT(11) NOT NULL AUTO_INCREMENT,
        `tg_id` INT(11) NOT NULL,
        `addr` VARCHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
        `tag` VARCHAR(64) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
        `add_time` TIMESTAMP(6) NULL DEFAULT NULL,
        `add_time_ts` VARCHAR(32) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
        PRIMARY KEY (`id`) USING BTREE,
        UNIQUE INDEX `addr` (`tg_id`, `addr`) USING BTREE,
        INDEX `tg_id` (`tg_id`) USING BTREE,
        INDEX `addr_sg` (`addr`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=19
;
