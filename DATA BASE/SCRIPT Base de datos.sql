
CREATE DATABASE IF NOT EXISTS solutions_intel_sa;
USE solutions_intel_sa;


-- Tabla de Sectores
CREATE TABLE IF NOT EXISTS Sectores (
    Sector_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) UNIQUE NOT NULL
);

-- Tabla de Clientes
CREATE TABLE IF NOT EXISTS Clientes (
 Cliente_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) UNIQUE NOT NULL
);

-- Tabla intermedia para relacionar Clientes y Sectores (Muchos a Muchos)
CREATE TABLE IF NOT EXISTS Clientes_Sectores (
    Cliente_ID INT,
    Sector_ID INT,
    PRIMARY KEY (Cliente_ID, Sector_ID),
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(Cliente_ID),
    FOREIGN KEY (Sector_ID) REFERENCES Sectores(Sector_ID)
);

-- Tabla de Productos
CREATE TABLE IF NOT EXISTS Productos (
    Producto_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) UNIQUE NOT NULL
);

-- Tabla de Ventas
CREATE TABLE IF NOT EXISTS Ventas (
    Venta_ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Cliente_ID INT,
    Producto_ID INT,
    Monto_Venta INT,
    Cantidad_Productos INT,
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(Cliente_ID),
    FOREIGN KEY (Producto_ID) REFERENCES Productos(Producto_ID)
);

-- Tabla de Soporte
CREATE TABLE IF NOT EXISTS Soporte (
    Soporte_ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Cliente_ID INT,
    Casos_Soporte INT,
    Tiempo_Resolucion_Horas INT,
    Satisfaccion_Cliente INT,
    Uso_Software_Horas INT,
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(Cliente_ID)
);

INSERT INTO Clientes (Nombre) VALUES ('Cliente_3');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_161');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_134');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_178');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_10');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_5');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_151');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_138');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_172');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_130');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_13');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_168');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_84');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_65');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_63');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_101');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_73');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_17');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_9');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_143');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_152');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_38');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_163');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_94');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_95');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_49');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_69');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_62');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_188');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_78');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_117');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_120');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_137');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_162');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_76');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_35');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_1');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_40');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_64');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_150');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_60');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_93');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_72');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_11');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_105');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_14');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_30');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_165');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_83');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_123');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_154');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_132');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_89');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_42');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_146');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_39');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_104');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_32');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_179');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_125');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_166');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_97');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_23');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_153');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_145');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_194');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_53');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_198');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_67');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_135');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_192');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_15');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_111');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_157');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_33');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_155');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_164');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_185');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_183');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_196');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_86');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_66');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_74');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_118');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_141');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_159');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_47');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_109');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_180');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_184');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_136');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_68');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_173');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_115');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_36');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_26');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_43');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_27');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_148');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_90');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_46');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_107');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_140');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_190');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_171');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_100');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_133');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_37');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_127');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_106');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_92');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_31');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_122');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_51');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_29');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_41');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_149');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_110');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_182');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_57');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_55');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_175');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_169');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_25');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_75');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_91');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_128');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_187');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_108');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_199');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_88');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_177');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_156');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_114');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_81');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_189');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_71');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_158');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_144');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_19');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_18');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_113');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_129');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_8');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_103');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_131');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_124');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_87');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_54');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_96');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_142');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_176');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_7');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_85');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_147');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_112');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_82');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_2');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_197');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_195');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_119');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_20');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_99');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_24');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_59');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_22');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_4');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_186');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_98');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_70');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_34');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_12');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_193');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_181');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_56');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_61');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_102');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_44');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_80');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_16');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_79');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_116');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_167');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_45');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_170');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_126');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_160');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_121');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_77');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_52');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_6');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_139');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_28');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_48');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_191');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_58');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_50');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_174');
INSERT INTO Clientes (Nombre) VALUES ('Cliente_21');
INSERT INTO Sectores (Nombre) VALUES ('Banca');
INSERT INTO Sectores (Nombre) VALUES ('Educacion');
INSERT INTO Sectores (Nombre) VALUES ('Tecnologia');
INSERT INTO Sectores (Nombre) VALUES ('Retail');
INSERT INTO Sectores (Nombre) VALUES ('Salud');
INSERT INTO Productos (Nombre) VALUES ('Software_4');
INSERT INTO Productos (Nombre) VALUES ('Software_9');
INSERT INTO Productos (Nombre) VALUES ('Software_2');
INSERT INTO Productos (Nombre) VALUES ('Software_5');
INSERT INTO Productos (Nombre) VALUES ('Software_3');
INSERT INTO Productos (Nombre) VALUES ('Software_6');
INSERT INTO Productos (Nombre) VALUES ('Software_8');
INSERT INTO Productos (Nombre) VALUES ('Software_1');
INSERT INTO Productos (Nombre) VALUES ('Software_7');


    
    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_3' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_161' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_134' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_178' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_10' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_5' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_151' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_138' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_172' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_130' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_13' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_168' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_84' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_65' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_63' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_101' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_73' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_17' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_9' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_143' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_152' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_38' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_163' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_94' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_95' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_49' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_69' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_62' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_188' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_178' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_78' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_117' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_120' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_137' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_162' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_76' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_35' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_1' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_40' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_64' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_150' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_60' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_64' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_93' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_72' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_11' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_105' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_14' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_60' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_30' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_35' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_165' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_5' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_83' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_123' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_78' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_154' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_62' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_132' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_89' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_42' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_89' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_146' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_40' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_72' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_39' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_104' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_14' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_32' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_179' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_125' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_166' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_97' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_23' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_143' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_153' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_145' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_194' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_53' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_104' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_104' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_179' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_39' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_198' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_67' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_135' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_192' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_15' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_111' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_157' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_33' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_155' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_164' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_157' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_185' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_97' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_155' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_183' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_33' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_196' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_86' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_66' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_10' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_5' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_74' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_97' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_118' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_141' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_159' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_47' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_109' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_180' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_184' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_15' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_157' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_136' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_5' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_47' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_68' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_76' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_173' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_155' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_95' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_115' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_36' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_26' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_43' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_27' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_148' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_11' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_47' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_90' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_46' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_107' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_140' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_104' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_190' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_111' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_171' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_100' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_68' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_133' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_120' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_37' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_72' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_127' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_106' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_92' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_31' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_122' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_137' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_51' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_29' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_40' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_41' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_151' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_1' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_46' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_101' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_149' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_90' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_110' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_164' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_182' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_57' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_63' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_55' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_115' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_168' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_143' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_149' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_175' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_53' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_137' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_180' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_57' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_117' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_169' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_63' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_25' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_90' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_75' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_135' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_162' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_91' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_17' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_128' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_171' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_187' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_108' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_182' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_152' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_25' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_199' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_180' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_198' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_88' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_161' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_177' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_63' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_150' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_154' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_156' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_114' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_49' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_199' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_81' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_84' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_105' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_177' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_148' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_86' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_189' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_104' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_71' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_141' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_179' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_123' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_62' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_158' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_29' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_30' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_144' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_168' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_19' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_18' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_78' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_113' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_114' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_166' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_63' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_132' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_129' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_8' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_157' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_55' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_103' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_131' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_32' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_162' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_124' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_87' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_55' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_178' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_93' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_67' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_187' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_54' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_67' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_51' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_92' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_8' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_96' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_88' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_78' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_32' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_120' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_46' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_144' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_196' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_165' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_142' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_55' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_176' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_7' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_74' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_7' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_161' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_85' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_147' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_112' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_125' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_147' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_36' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_29' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_188' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_82' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_2' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_129' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_197' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_11' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_130' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_195' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_119' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_20' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_166' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_137' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_172' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_99' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_86' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_24' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_81' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_158' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_120' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_59' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_128' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_14' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_9' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_194' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_25' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_103' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_22' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_4' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_154' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_186' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_98' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_75' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_70' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_146' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_85' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_42' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_100' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_166' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_34' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_17' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_165' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_122' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_76' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_87' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_117' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_27' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_31' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_134' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_168' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_12' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_53' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_199' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_145' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_154' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_190' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_122' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_64' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_54' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_107' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_193' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_51' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_181' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_36' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_115' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_26' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_29' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_149' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_11' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_113' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_54' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_98' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_55' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_111' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_152' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_150' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_69' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_56' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_81' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_109' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_194' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_73' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_129' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_61' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_171' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_42' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_25' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_35' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_131' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_172' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_102' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_98' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_19' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_101' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_44' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_187' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_189' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_17' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_74' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_57' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_12' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_62' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_80' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_83' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_8' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_149' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_118' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_198' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_89' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_59' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_109' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_26' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_47' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_32' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_10' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_16' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_145' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_26' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_14' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_79' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_117' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_7' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_115' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_176' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_72' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_59' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_82' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_116' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_167' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_103' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_14' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_159' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_152' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_108' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_45' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_131' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_37' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_15' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_4' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_161' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_170' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_126' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_170' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_34' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_18' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_160' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_46' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_190' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_185' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_16' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_184' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_121' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_153' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_84' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_65' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_177' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_3' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_173' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_142' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_158' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_68' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_146' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_153' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_193' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_181' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_49' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_121' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_37' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_61' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_171' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_124' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_198' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_184' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_88' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_77' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_153' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_199' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_52' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_93' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_117' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_110' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_74' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_57' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_169' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_6' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_5' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_177' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_9' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_99' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_20' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_61' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_62' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_145' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_13' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_125' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_73' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_142' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_101' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_105' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_123' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_29' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_76' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_170' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_139' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_38' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_133' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_37' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_60' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_176' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_28' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_197' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_114' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_40' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_45' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_186' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_67' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_56' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_91' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_33' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_92' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_97' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_59' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_48' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_169' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_107' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_45' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_89' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_181' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_191' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_166' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_188' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_7' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_45' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_58' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_138' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_160' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_107' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_181' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_159' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_82' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_2' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_77' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_13' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_155' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_113' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_192' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_88' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_109' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_70' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_199' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_156' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_79' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_22' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_196' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_96' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_68' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_192' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_17' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_150' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_138' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_118' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_193' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_22' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_120' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_50' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_180' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_139' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_33' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_134' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_79' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_160' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_179' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_58' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_174' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_4' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_99' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_39' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_119' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_157' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_75' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_116' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_130' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_175' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_27' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_195' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_21' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_84' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_6' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_147' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_131' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_1' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_124' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_162' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_189' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_163' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_15' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_60' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_174' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_53' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_50' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_24' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_60' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_148' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_126' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_9' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_176' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_130' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_139' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_21' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_18' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_64' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_110' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_95' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_32' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_102' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_136' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_179' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_41' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_121' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_160' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_80' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_54' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_86' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_92' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_161' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_2' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_77' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_150' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_174' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_122' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_143' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_61' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_195' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_41' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_114' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_127' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_132' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_22' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_127' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_106' AND s.Nombre = 'Retail'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_87' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_12' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_173' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_136' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_119' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_53' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_183' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_44' AND s.Nombre = 'Banca'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_82' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_96' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_56' AND s.Nombre = 'Educacion'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_131' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_156' AND s.Nombre = 'Tecnologia'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Clientes_Sectores (Cliente_ID, Sector_ID)
    SELECT c.Cliente_ID, s.Sector_ID FROM Clientes c, Sectores s
    WHERE c.Nombre = 'Cliente_189' AND s.Nombre = 'Salud'
    ON DUPLICATE KEY UPDATE Clientes_Sectores.Cliente_ID = Clientes_Sectores.Cliente_ID;

    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9829, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3193, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            982, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4508, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            4168, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3377, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_151'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8666, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_138'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            8051, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4790, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4695, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4659, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7391, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8260, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            212, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_65'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            5231, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3297, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            239, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1524, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3049, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3268, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            8808, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_152'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6143, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7089, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_163'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            7336, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_94'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6361, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_95'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            987, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3204, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_69'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            149, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4051, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3660, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            118, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_78'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4921, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6440, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8158, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9765, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2706, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7946, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            8743, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            6532, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3865, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2538, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9841, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6458, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8419, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6041, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7744, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4955, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_105'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6647, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7296, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6011, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_30'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6581, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2861, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_165'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4556, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9707, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_83'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6461, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            5793, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_78'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            5888, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            301, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6260, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_132'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            617, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7837, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_42'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9633, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2088, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            3902, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            5908, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7262, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            6341, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8499, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5733, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5855, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6409, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_125'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4217, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            8445, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1618, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_23'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6263, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2700, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2295, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3654, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2949, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1842, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1406, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3949, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7619, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4295, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5278, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            2655, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2405, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7719, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9380, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_135'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2742, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9469, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_42'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6509, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4857, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            3094, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8851, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1371, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            1913, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8901, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2561, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4220, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6224, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_185'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            8575, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            4496, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9383, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_183'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            916, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7404, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_196'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7431, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            182, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_66'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2020, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7917, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2193, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            7171, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8067, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8467, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_118'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            5385, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5037, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            469, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_159'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1918, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2201, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3590, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_180'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1879, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7774, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1464, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            7394, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_136'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3776, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2526, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8364, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            8189, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3062, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            959, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4238, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2524, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9356, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_95'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4117, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            8660, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8442, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_36'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1234, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5266, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_43'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            5219, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5794, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_69'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            6236, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            5585, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4264, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2446, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5139, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4997, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            8352, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_23'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            5141, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4001, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1437, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1284, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4526, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_140'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            1651, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            1729, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            9619, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1626, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9965, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            1461, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9865, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4470, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5383, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7710, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_133'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2093, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            969, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1114, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            702, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_127'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            790, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_106'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8785, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            589, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_31'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6964, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7340, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7886, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_51'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8124, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            394, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5588, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4127, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3012, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_151'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4844, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1973, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3358, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2917, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_149'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8736, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3741, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_110'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4558, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5407, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_182'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9033, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2141, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            779, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5838, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_182'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            5768, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9650, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            7797, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8133, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            162, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_149'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7929, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_175'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7452, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7015, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8426, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_180'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3744, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            5070, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8103, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3378, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_169'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7396, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9114, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3174, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            8412, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7652, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_75'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1737, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5203, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9216, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_135'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            744, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2132, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_91'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            2861, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            2168, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_128'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            341, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            2768, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            902, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5159, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            295, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_182'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2287, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_152'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2430, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4941, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3706, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_180'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8568, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            160, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            4027, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6396, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_177'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2691, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8858, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            9863, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6221, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1300, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_156'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2954, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7124, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            9528, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7072, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            236, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1129, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_105'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2694, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_177'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            7306, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            761, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_118'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2572, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            186, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6319, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_189'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8243, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7068, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2873, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_71'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            1800, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2800, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6915, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1747, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6138, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            5264, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            5620, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3787, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            696, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4645, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8776, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8937, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_30'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4857, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_144'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4484, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9012, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_19'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4833, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_18'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            7181, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8790, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_78'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7217, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4829, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_175'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1773, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8406, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_113'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7278, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2394, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            3730, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            246, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3553, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_132'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4607, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_129'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            5883, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            7851, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            5728, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8428, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3460, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3105, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3652, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            118, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_110'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            2342, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6418, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_124'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5197, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_87'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8740, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2048, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            9237, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            5718, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_135'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4336, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7001, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2020, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_65'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4288, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            338, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            304, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5652, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5027, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4490, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2787, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_51'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5051, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            6260, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            5488, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9640, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5226, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            916, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_96'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9112, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            292, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_78'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1876, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3745, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6414, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8542, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_144'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1888, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_196'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7474, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_165'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3800, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_182'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9459, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_142'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3993, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6911, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9388, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2779, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4004, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7360, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            604, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_151'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9913, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_85'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9679, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6873, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_112'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3916, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_125'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            817, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4534, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_36'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            758, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            5157, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4108, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5094, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_2'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4334, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_129'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3864, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4737, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_197'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2204, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9547, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6901, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            8675, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_195'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2707, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_119'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8485, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_140'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3819, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_20'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            2681, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2665, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2863, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6428, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6091, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3506, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            9023, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_99'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4880, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            4277, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6576, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_24'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2704, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8281, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2482, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            631, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6179, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_128'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            734, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            102, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8497, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            6051, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            5726, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7839, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6103, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2990, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6339, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            8126, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_4'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3406, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            997, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_186'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9377, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9571, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            770, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7391, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            1605, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_75'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6560, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_70'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            5267, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            5355, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_128'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            349, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_85'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6557, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_42'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1992, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3539, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2954, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9795, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_34'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            3892, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            5430, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_165'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7971, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            8335, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3712, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2718, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_87'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4778, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3263, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_106'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9580, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3042, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8511, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2025, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_31'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3072, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            1090, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1912, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            9095, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            589, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5976, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9785, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_138'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            3745, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7181, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2991, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9997, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3616, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3440, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6510, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            153, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            2675, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            715, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6044, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_193'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7504, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_51'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1054, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            1729, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_36'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6959, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8941, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3378, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5555, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_149'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3901, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2661, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            6639, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            470, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            957, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_113'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4986, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7585, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            483, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4434, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4390, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2825, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6304, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_152'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6211, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4351, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_69'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1022, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_56'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3015, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            8057, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_36'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3146, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9266, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            1330, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7747, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5033, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            9655, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4040, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6583, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            303, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            260, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_129'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9060, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_61'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3848, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6818, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2681, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_42'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1193, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4600, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8899, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            5810, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9832, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2975, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3291, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            1937, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_102'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            789, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3859, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2203, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_19'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            465, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8192, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_44'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            4272, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6133, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2478, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_189'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1305, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            5088, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            5769, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2835, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9967, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            8590, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            1056, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            9406, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_80'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6723, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_83'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            1574, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4560, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_149'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7102, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6496, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_118'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2928, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2950, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3064, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4694, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            9241, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6744, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2950, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            265, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1019, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8405, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            3604, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1091, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6147, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_16'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3939, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1358, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7709, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_151'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8806, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4904, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            167, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_135'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9888, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5760, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_79'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4578, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8310, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3621, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            672, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            7182, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            7932, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5495, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2358, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6139, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_116'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            750, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_167'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            5841, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6938, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2687, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7976, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3362, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1438, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_159'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5096, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_152'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5880, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            2927, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5332, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            2317, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3639, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            7945, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9329, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4483, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3061, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_183'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3326, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6937, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            7131, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9390, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            9231, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_4'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            3816, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            3514, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1548, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            670, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            3004, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_16'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2605, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1017, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7082, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_126'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7527, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6436, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1778, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            715, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_34'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7186, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4849, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3605, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4629, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_18'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1235, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8666, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_96'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7326, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            5262, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            306, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4975, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1419, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            1241, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4727, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_185'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7489, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_16'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2790, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7423, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_121'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3355, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8381, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5313, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4208, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            3120, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            1957, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_133'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9096, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_65'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9236, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_177'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2889, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3975, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7705, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_142'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9902, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8235, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6155, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3982, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7275, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7229, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5121, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4835, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2487, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_193'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6682, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9233, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5966, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2666, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1075, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_121'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7312, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9246, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_196'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1362, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_140'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            5147, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9235, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7482, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_61'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6331, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3427, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_124'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5730, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2359, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1357, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            564, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3394, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6874, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7531, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            1330, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9176, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_77'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            3905, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6519, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            5850, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_52'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3956, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_4'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            3235, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7053, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9216, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6134, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4689, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1646, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6165, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1194, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_110'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2511, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            2717, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            9054, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4245, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_169'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2875, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6728, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3255, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_6'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4070, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            8072, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8875, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            5515, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4431, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_177'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2042, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6126, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_99'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            8401, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_20'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            291, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9195, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_61'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            961, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6811, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_163'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9375, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            749, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4234, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            7687, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            8928, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            1136, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            4231, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2248, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5557, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_125'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6179, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2530, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1979, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7642, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_142'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            2111, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3473, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7457, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            1389, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_105'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1547, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3299, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6481, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7622, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6159, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3283, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_195'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5562, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3316, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3236, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            3418, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            2882, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9282, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7757, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5020, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_139'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6424, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6427, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_124'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8517, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            876, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5308, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_133'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            787, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            629, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            5167, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8180, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5618, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            2253, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9586, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6194, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_28'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            7074, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_197'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9818, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4874, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7792, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3203, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2540, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4235, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7224, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5301, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_186'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            944, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            546, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_56'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4015, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3209, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1334, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6687, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_91'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            326, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4243, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_6'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7285, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            5658, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_80'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            286, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            2635, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2032, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9140, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            2132, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            1352, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_48'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            5609, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_169'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5174, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1981, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            369, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1730, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4505, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6239, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1674, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1795, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_191'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3358, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3362, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1545, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6363, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            8511, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_133'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            152, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            5670, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_58'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7679, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_31'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1766, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_23'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7001, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2885, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_138'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            819, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8697, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            6955, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2394, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8363, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9521, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_159'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9859, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4582, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            798, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_2'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7343, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_77'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            9118, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            6018, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            448, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            5474, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7969, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            407, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3516, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_113'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4920, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3658, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4578, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            6631, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4720, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3085, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            8212, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8567, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_163'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            2647, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_70'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            436, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3079, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4068, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1010, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2096, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_156'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3229, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            5547, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_79'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6229, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            5950, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4304, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_196'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7546, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8619, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_96'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            414, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1234, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4976, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8202, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            9812, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            8447, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            5692, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_138'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1824, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_118'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            3443, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_193'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            986, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            821, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7778, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_50'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            9204, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3457, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            970, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_175'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6851, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            597, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            1856, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_180'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1217, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_125'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            2928, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1747, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7092, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_139'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6871, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            242, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2861, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3535, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_79'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6722, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            7169, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            4612, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_58'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1948, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2796, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_174'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1817, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            3172, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_4'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9359, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_99'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2886, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3891, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9580, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3971, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_119'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1906, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1604, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3408, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_75'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7217, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_116'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5148, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8363, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            1790, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_175'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9636, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3403, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            3213, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9174, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_195'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7950, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6516, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_126'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1604, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9024, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4024, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_21'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8715, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9883, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4585, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8200, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8784, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_6'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            291, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            8790, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_185'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            5017, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_197'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            5931, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9548, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4422, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_58'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7099, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_124'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9108, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7382, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9765, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            9378, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_189'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            1974, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_163'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9162, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            4863, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8564, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_24'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9321, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            1151, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_18'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            9865, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7638, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7511, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6420, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2205, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_174'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            407, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7837, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3459, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3276, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            1351, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_79'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            5466, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            1617, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_174'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6326, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_50'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5405, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9670, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            5969, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            8139, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4991, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5092, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            2061, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_24'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2963, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6703, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4667, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6613, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4105, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            9214, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            283, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7855, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            3458, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6715, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_126'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9690, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6897, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            8828, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            7778, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5798, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            1373, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6753, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            1196, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9597, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9207, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            8102, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_139'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4347, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9320, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5414, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_21'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            3454, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_18'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            370, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1286, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6405, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_110'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2498, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_95'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            7095, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7399, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4282, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2330, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6611, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            228, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_102'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9561, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_169'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            3772, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_136'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9893, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4865, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            4070, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            7645, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            5652, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            727, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            6689, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_121'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2144, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            2441, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5984, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_80'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            8285, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            349, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            3025, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            5143, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            1074, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            9617, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            7292, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9275, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            9180, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_2'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2772, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7379, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            7631, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9618, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_77'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            8762, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_116'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            2087, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            190, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            8821, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4159, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            2873, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            9978, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8483, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            7509, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_174'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4540, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7447, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1108, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_106'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3883, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_119'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            6746, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4398, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4768, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4387, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_61'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2152, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_195'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6109, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            1816, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            410, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4638, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_6'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1360, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            4032, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            684, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            7716, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8651, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2966, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            5998, 19);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2111, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6351, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5039, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            4106, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1725, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            990, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6178, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_127'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            7136, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9023, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            4061, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_132'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2604, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            8906, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_58'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            3906, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            6200, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1819, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_127'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            6786, 7);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            1687, 12);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_127'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            7100, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            9903, 11);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            996, 10);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_106'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            5658, 1);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8569, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4747, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_87'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9928, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            2532, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            4004, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            6937, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            1549, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4600, 5);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            5554, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            9524, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4217, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            8969, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_136'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_2'), 
            2128, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_119'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_7'), 
            6945, 16);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            3858, 17);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_183'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            6004, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            4724, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_51'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            8948, 14);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-07-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_44'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            265, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-08-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            4691, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            689, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            4624, 6);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            2921, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            6609, 18);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_96'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_1'), 
            7793, 4);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-03-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_56'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_5'), 
            9554, 8);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_105'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_6'), 
            171, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_8'), 
            3680, 3);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-02-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            8062, 15);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-10-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_156'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_3'), 
            368, 13);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-05-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_9'), 
            2562, 9);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-12-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_189'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            9560, 2);
    
    INSERT INTO Ventas (Fecha, Cliente_ID, Producto_ID, Monto_Venta, Cantidad_Productos)
    VALUES ('2023-11-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            (SELECT Producto_ID FROM Productos WHERE Nombre='Software_4'), 
            1115, 8);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            4, 52, 4, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            3, 43, 4, 78);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            0, 22, 5, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            4, 55, 3, 53);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            0, 67, 3, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            1, 60, 3, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_151'), 
            3, 58, 3, 81);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_138'), 
            0, 12, 5, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            4, 69, 4, 6);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            1, 39, 5, 49);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            1, 13, 2, 73);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            4, 41, 5, 50);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            4, 57, 1, 81);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            0, 53, 5, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_65'), 
            2, 12, 3, 12);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            1, 13, 3, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            0, 57, 3, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            4, 40, 5, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            0, 45, 1, 59);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            4, 35, 3, 36);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            3, 3, 5, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_152'), 
            4, 5, 3, 58);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            4, 11, 2, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_163'), 
            4, 71, 3, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_94'), 
            2, 56, 3, 57);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_95'), 
            4, 10, 5, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            1, 34, 4, 39);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_69'), 
            1, 67, 3, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            0, 31, 5, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            2, 71, 3, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            0, 66, 1, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_78'), 
            1, 70, 3, 76);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            1, 41, 3, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            3, 63, 2, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            4, 32, 5, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            1, 20, 4, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            0, 57, 3, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            0, 50, 4, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            4, 25, 4, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            4, 12, 5, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            3, 71, 5, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            2, 39, 3, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            0, 17, 4, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            4, 45, 4, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            0, 11, 4, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            4, 70, 2, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            1, 23, 2, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_105'), 
            0, 70, 3, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            1, 38, 3, 28);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            0, 2, 1, 53);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_30'), 
            2, 37, 4, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            3, 49, 1, 53);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_165'), 
            1, 52, 4, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            4, 33, 3, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_83'), 
            2, 22, 5, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            0, 5, 3, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_78'), 
            1, 18, 1, 74);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            0, 38, 4, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            0, 37, 4, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_132'), 
            0, 64, 5, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            3, 10, 3, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_42'), 
            3, 42, 3, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            4, 48, 5, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            1, 44, 2, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            2, 16, 4, 58);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            2, 54, 3, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            2, 35, 1, 59);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            0, 28, 3, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            3, 2, 3, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            1, 13, 4, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            0, 41, 5, 37);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_125'), 
            3, 59, 3, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            3, 69, 4, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            1, 53, 1, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_23'), 
            1, 45, 3, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            1, 20, 1, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            0, 24, 5, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            4, 61, 4, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            1, 58, 4, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            4, 27, 4, 14);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            0, 26, 4, 91);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            4, 7, 5, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            2, 42, 4, 22);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            4, 47, 5, 48);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            1, 53, 3, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            0, 59, 2, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            1, 38, 3, 85);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            2, 69, 2, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            1, 53, 4, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_135'), 
            1, 15, 3, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            1, 26, 4, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_42'), 
            3, 48, 1, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            2, 19, 2, 85);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            1, 9, 3, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            1, 64, 5, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            1, 54, 3, 99);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            0, 51, 3, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            3, 39, 4, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            0, 4, 4, 11);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            3, 3, 3, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            1, 64, 3, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_185'), 
            2, 29, 2, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            4, 11, 5, 65);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            4, 58, 2, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_183'), 
            1, 27, 3, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            0, 21, 1, 46);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_196'), 
            2, 39, 2, 49);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            3, 46, 4, 22);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_66'), 
            1, 66, 2, 78);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            2, 36, 1, 57);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            2, 65, 3, 14);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            3, 63, 1, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            2, 35, 1, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            0, 31, 4, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_118'), 
            0, 28, 4, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            0, 1, 5, 12);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            2, 25, 5, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_159'), 
            0, 43, 4, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            3, 67, 1, 39);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            2, 63, 4, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_180'), 
            4, 51, 4, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            2, 2, 4, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            3, 64, 3, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            4, 69, 2, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_136'), 
            2, 9, 4, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            0, 2, 4, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            1, 34, 5, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            1, 60, 2, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            0, 61, 2, 46);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            1, 31, 2, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            1, 10, 4, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            0, 36, 2, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            0, 49, 1, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_95'), 
            2, 70, 5, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            2, 49, 1, 74);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            0, 3, 4, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_36'), 
            3, 5, 3, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            1, 61, 4, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_43'), 
            2, 26, 4, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            1, 5, 5, 59);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_69'), 
            4, 15, 5, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            0, 16, 1, 34);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            3, 1, 1, 49);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            4, 16, 3, 28);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            4, 37, 4, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            4, 3, 5, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            0, 52, 3, 96);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_23'), 
            2, 47, 4, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            0, 13, 2, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            2, 55, 4, 98);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            4, 21, 5, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            4, 66, 3, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_140'), 
            3, 54, 3, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            2, 27, 1, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            4, 38, 4, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            1, 58, 3, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            3, 62, 2, 24);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            0, 46, 3, 63);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            3, 11, 3, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            1, 8, 3, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            2, 71, 4, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            0, 64, 1, 30);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_133'), 
            0, 21, 4, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            2, 63, 4, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            3, 64, 3, 96);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            4, 20, 1, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_127'), 
            3, 8, 4, 53);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_106'), 
            1, 58, 5, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            4, 46, 2, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_31'), 
            3, 31, 3, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            2, 9, 2, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            1, 15, 4, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_51'), 
            1, 26, 2, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            1, 10, 3, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            4, 29, 4, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            0, 36, 4, 34);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            4, 37, 3, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_151'), 
            3, 71, 3, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            0, 23, 4, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            3, 41, 1, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            0, 28, 1, 98);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_149'), 
            4, 48, 5, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            1, 38, 1, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_110'), 
            2, 31, 4, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            1, 14, 5, 39);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_182'), 
            4, 29, 3, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            0, 51, 3, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            1, 49, 4, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            4, 43, 5, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_182'), 
            3, 5, 5, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            2, 42, 4, 20);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            1, 7, 1, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            0, 42, 4, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            3, 36, 3, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_149'), 
            4, 27, 3, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_175'), 
            2, 58, 1, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            0, 46, 2, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            4, 66, 4, 62);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_180'), 
            4, 25, 3, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            1, 27, 3, 42);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            1, 1, 3, 12);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            0, 42, 5, 65);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_169'), 
            4, 52, 4, 73);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            1, 25, 3, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            2, 54, 2, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            2, 67, 3, 9);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            4, 6, 5, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_75'), 
            1, 58, 4, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            0, 70, 3, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            0, 53, 4, 78);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_135'), 
            0, 66, 3, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            2, 58, 4, 98);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_91'), 
            1, 2, 3, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            1, 22, 2, 24);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_128'), 
            2, 37, 2, 73);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            0, 20, 3, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            0, 24, 5, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            4, 65, 3, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            3, 65, 5, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_182'), 
            1, 1, 4, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_152'), 
            1, 3, 2, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            1, 46, 1, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            3, 55, 2, 22);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_180'), 
            4, 64, 4, 75);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            3, 45, 2, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            0, 26, 3, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            0, 65, 3, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_177'), 
            1, 24, 4, 85);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            2, 35, 2, 39);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            1, 24, 3, 84);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            2, 28, 3, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            3, 16, 3, 42);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_156'), 
            0, 59, 4, 9);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            2, 54, 2, 25);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            3, 16, 4, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            0, 15, 4, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            2, 11, 4, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            1, 65, 4, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_105'), 
            1, 68, 3, 20);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_177'), 
            1, 43, 2, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            3, 69, 4, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_118'), 
            1, 13, 3, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            4, 10, 4, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            0, 41, 3, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_189'), 
            3, 50, 5, 94);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            1, 71, 4, 84);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            0, 59, 1, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_71'), 
            2, 39, 3, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            1, 3, 4, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            0, 7, 4, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            4, 49, 3, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            2, 26, 5, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            4, 33, 3, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            0, 48, 3, 8);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            4, 2, 5, 81);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            0, 71, 5, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            0, 32, 4, 37);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            4, 4, 5, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            0, 20, 1, 27);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_30'), 
            1, 36, 5, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_144'), 
            0, 32, 3, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            3, 28, 2, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_19'), 
            0, 1, 2, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_18'), 
            3, 60, 3, 96);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            0, 56, 3, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_78'), 
            0, 35, 3, 99);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            4, 30, 2, 37);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_175'), 
            1, 54, 3, 96);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            1, 36, 4, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_113'), 
            2, 55, 3, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            4, 58, 3, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            4, 65, 4, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            1, 69, 5, 12);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            4, 51, 4, 11);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_132'), 
            1, 22, 3, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_129'), 
            4, 53, 4, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            0, 36, 2, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            1, 68, 2, 57);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            1, 36, 3, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            3, 52, 4, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            4, 53, 2, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            4, 50, 1, 98);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            1, 41, 2, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_110'), 
            0, 18, 5, 84);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            0, 22, 4, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_124'), 
            0, 66, 3, 14);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_87'), 
            4, 21, 4, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            3, 44, 3, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            1, 47, 4, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            2, 39, 2, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_135'), 
            3, 29, 5, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            2, 54, 3, 62);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            3, 17, 4, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_65'), 
            0, 60, 1, 91);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            4, 31, 3, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            2, 49, 3, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            3, 2, 3, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            4, 48, 1, 59);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            2, 14, 4, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            1, 59, 2, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_51'), 
            3, 58, 4, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            1, 58, 4, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            0, 51, 4, 22);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            1, 2, 4, 9);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            1, 41, 4, 9);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            3, 16, 3, 73);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_96'), 
            0, 4, 4, 27);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            1, 12, 3, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_78'), 
            4, 29, 4, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            2, 7, 4, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            1, 14, 3, 8);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            0, 12, 3, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_144'), 
            1, 5, 3, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_196'), 
            2, 32, 4, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_165'), 
            0, 43, 5, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_182'), 
            3, 69, 3, 76);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_142'), 
            0, 45, 4, 6);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            3, 9, 5, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            0, 49, 1, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            2, 33, 2, 5);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            2, 18, 4, 59);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            0, 9, 4, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            1, 62, 5, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_151'), 
            2, 57, 3, 49);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_85'), 
            3, 29, 1, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            3, 25, 3, 65);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_112'), 
            4, 15, 2, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_125'), 
            3, 6, 3, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            4, 42, 4, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_36'), 
            0, 29, 1, 8);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            0, 4, 4, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            0, 57, 3, 25);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            1, 49, 4, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_2'), 
            1, 44, 1, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_129'), 
            4, 14, 3, 40);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            3, 3, 1, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_197'), 
            3, 62, 5, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            0, 64, 4, 50);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            2, 45, 3, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            1, 58, 2, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_195'), 
            1, 20, 5, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_119'), 
            0, 58, 3, 57);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_140'), 
            1, 57, 2, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_20'), 
            0, 68, 4, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            4, 52, 5, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            3, 37, 1, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            2, 8, 2, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            3, 44, 5, 78);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            3, 5, 2, 53);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            4, 69, 2, 63);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_99'), 
            1, 31, 4, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            2, 45, 5, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            1, 9, 3, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_24'), 
            3, 32, 5, 22);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            0, 33, 4, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            3, 67, 1, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            1, 30, 5, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            3, 29, 3, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_128'), 
            0, 3, 3, 76);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            4, 57, 4, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            1, 30, 3, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            3, 9, 1, 91);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            1, 26, 1, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            4, 2, 3, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            3, 62, 4, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            3, 3, 4, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            1, 46, 5, 5);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            1, 68, 3, 12);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_4'), 
            0, 25, 3, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            4, 51, 2, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_186'), 
            0, 13, 2, 99);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            3, 44, 3, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            1, 35, 4, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            3, 55, 5, 50);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            3, 9, 5, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_75'), 
            2, 2, 2, 9);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_70'), 
            2, 61, 5, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            3, 41, 3, 50);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_128'), 
            1, 44, 2, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_85'), 
            3, 64, 5, 39);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_42'), 
            2, 31, 4, 91);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            1, 47, 2, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            3, 2, 3, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            4, 69, 3, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_34'), 
            4, 58, 4, 98);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            3, 44, 3, 46);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_165'), 
            1, 56, 5, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            3, 43, 1, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            3, 34, 3, 14);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            2, 30, 3, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_87'), 
            4, 71, 3, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            2, 70, 3, 94);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_106'), 
            2, 55, 4, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            3, 67, 5, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            2, 13, 5, 27);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            4, 3, 4, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_31'), 
            2, 26, 5, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            4, 57, 4, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            2, 24, 4, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            4, 53, 3, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            2, 70, 3, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            2, 43, 3, 98);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            1, 60, 3, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_138'), 
            4, 58, 3, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            4, 49, 5, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            4, 42, 3, 81);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            0, 66, 1, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            2, 11, 3, 49);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            4, 18, 1, 73);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            0, 52, 2, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            1, 46, 2, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            4, 44, 3, 96);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            4, 22, 3, 50);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            0, 53, 4, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_193'), 
            2, 59, 4, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_51'), 
            1, 30, 3, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            4, 8, 3, 8);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_36'), 
            2, 57, 3, 59);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            1, 20, 4, 65);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            3, 25, 1, 81);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            3, 19, 1, 12);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_149'), 
            1, 5, 4, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            0, 27, 3, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            1, 40, 2, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            1, 26, 2, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            0, 27, 5, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_113'), 
            0, 62, 5, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            2, 50, 4, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            2, 42, 3, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            0, 29, 3, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            3, 39, 5, 81);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            3, 60, 5, 30);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            1, 41, 2, 73);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_152'), 
            4, 33, 4, 6);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            1, 16, 2, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_69'), 
            1, 23, 2, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_56'), 
            4, 7, 4, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            0, 26, 3, 85);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_36'), 
            3, 12, 5, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            1, 5, 1, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            4, 69, 3, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            2, 49, 5, 37);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            1, 26, 5, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            3, 5, 2, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            0, 22, 3, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            1, 13, 4, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            1, 28, 2, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            4, 33, 5, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_129'), 
            2, 23, 5, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_61'), 
            2, 18, 2, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            0, 30, 2, 36);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            3, 26, 1, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_42'), 
            0, 16, 5, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            1, 39, 2, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            1, 33, 3, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            2, 26, 3, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            3, 48, 4, 5);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            4, 65, 1, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            3, 38, 2, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            1, 2, 5, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_102'), 
            4, 6, 5, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            3, 46, 4, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            3, 50, 1, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_19'), 
            4, 38, 3, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            1, 18, 4, 15);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_44'), 
            3, 27, 3, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            4, 41, 5, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            1, 17, 4, 30);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_189'), 
            4, 62, 1, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            4, 29, 5, 75);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            3, 58, 5, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            1, 70, 1, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            3, 22, 3, 40);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            0, 6, 3, 65);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            0, 26, 3, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            1, 39, 2, 74);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_80'), 
            4, 12, 4, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_83'), 
            3, 14, 5, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            3, 22, 3, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_149'), 
            1, 51, 1, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            1, 23, 4, 36);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_118'), 
            0, 48, 3, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            2, 71, 5, 15);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            1, 50, 3, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            2, 13, 2, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            1, 10, 2, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            4, 55, 4, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            4, 9, 3, 36);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            0, 52, 4, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            0, 2, 2, 84);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            2, 25, 3, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            1, 13, 3, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            3, 51, 5, 5);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            0, 58, 5, 78);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_16'), 
            3, 34, 2, 91);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            3, 35, 3, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            1, 3, 2, 14);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_151'), 
            2, 59, 3, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            1, 70, 3, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            0, 48, 5, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_135'), 
            3, 64, 5, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            1, 19, 3, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_79'), 
            1, 67, 3, 94);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            1, 5, 5, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            0, 67, 4, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            2, 11, 1, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            1, 68, 3, 9);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            0, 69, 3, 53);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            3, 1, 2, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            4, 63, 2, 78);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            0, 29, 1, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_116'), 
            4, 12, 4, 46);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_167'), 
            1, 41, 3, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            1, 2, 1, 74);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            0, 37, 2, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            4, 45, 4, 37);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            1, 48, 5, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            3, 24, 3, 27);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_159'), 
            2, 22, 3, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_152'), 
            2, 11, 5, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            1, 58, 2, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            4, 46, 2, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            1, 29, 3, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            4, 35, 2, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            3, 15, 3, 50);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            4, 60, 5, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            1, 42, 4, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            3, 43, 3, 40);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_183'), 
            0, 49, 5, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            2, 64, 1, 22);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            1, 32, 2, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            1, 64, 4, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            1, 2, 4, 40);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_4'), 
            3, 24, 1, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            0, 66, 3, 48);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            4, 38, 4, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            0, 31, 4, 75);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            3, 26, 4, 81);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_16'), 
            1, 29, 3, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            2, 67, 1, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_108'), 
            1, 25, 3, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_126'), 
            4, 48, 2, 8);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            2, 65, 5, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            1, 53, 3, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            2, 67, 3, 75);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_34'), 
            0, 18, 4, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            3, 9, 3, 9);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            1, 38, 3, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            4, 21, 4, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_18'), 
            0, 65, 5, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            1, 21, 4, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_96'), 
            0, 27, 1, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            4, 70, 4, 85);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            1, 44, 4, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            4, 28, 2, 59);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            2, 45, 2, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            4, 17, 5, 28);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            2, 40, 1, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_185'), 
            1, 3, 4, 14);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_16'), 
            2, 66, 3, 24);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            1, 46, 3, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_121'), 
            1, 30, 1, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_10'), 
            3, 69, 4, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            1, 9, 3, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            2, 11, 3, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            3, 69, 4, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            3, 66, 4, 50);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_133'), 
            1, 31, 5, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_65'), 
            4, 33, 3, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_177'), 
            4, 39, 3, 25);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            3, 46, 5, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            1, 37, 4, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_142'), 
            4, 60, 3, 42);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            1, 31, 2, 65);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            1, 11, 4, 36);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            3, 2, 3, 76);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            3, 27, 4, 9);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_190'), 
            0, 2, 3, 36);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            4, 21, 2, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            4, 58, 4, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            4, 5, 1, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_193'), 
            2, 52, 3, 42);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            1, 45, 3, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            3, 20, 3, 46);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            4, 61, 4, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            0, 38, 4, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_121'), 
            4, 20, 4, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            1, 25, 1, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_196'), 
            1, 2, 2, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_140'), 
            3, 32, 3, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            2, 26, 5, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            3, 70, 4, 15);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_61'), 
            4, 41, 4, 48);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_171'), 
            0, 67, 3, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_124'), 
            3, 1, 3, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            2, 51, 3, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            3, 5, 2, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            1, 13, 1, 57);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            4, 19, 5, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            4, 12, 2, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            4, 48, 2, 50);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            4, 25, 1, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            4, 57, 5, 22);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_77'), 
            4, 35, 4, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            0, 5, 4, 57);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            2, 22, 5, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_52'), 
            4, 57, 3, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_4'), 
            2, 47, 4, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            4, 54, 1, 62);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            3, 3, 2, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            4, 53, 4, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            1, 31, 4, 22);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            0, 69, 3, 65);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            3, 33, 3, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            3, 50, 3, 48);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_110'), 
            1, 16, 1, 5);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            4, 39, 2, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            0, 46, 2, 74);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_57'), 
            3, 47, 3, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_169'), 
            0, 44, 4, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            3, 9, 3, 46);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            4, 50, 2, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_6'), 
            3, 60, 3, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            3, 15, 5, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            2, 36, 2, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            4, 63, 1, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            1, 69, 3, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_177'), 
            1, 41, 4, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            4, 24, 4, 25);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_99'), 
            1, 49, 4, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_20'), 
            4, 18, 5, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            1, 7, 4, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_61'), 
            2, 4, 4, 40);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            1, 69, 3, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_163'), 
            3, 60, 1, 46);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            4, 55, 5, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            0, 16, 3, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            0, 29, 2, 46);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            4, 23, 4, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            2, 14, 3, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            1, 49, 4, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            2, 33, 4, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            0, 25, 3, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_125'), 
            4, 21, 4, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            4, 17, 3, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            2, 23, 3, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            2, 57, 3, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_142'), 
            1, 58, 4, 91);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            3, 14, 4, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            3, 20, 3, 99);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            1, 30, 4, 28);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_105'), 
            3, 19, 2, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            0, 53, 5, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            3, 56, 3, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            1, 23, 4, 57);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            3, 62, 1, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_137'), 
            4, 33, 2, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_195'), 
            2, 18, 3, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            0, 33, 5, 24);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            4, 32, 3, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            4, 61, 5, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            1, 54, 3, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            2, 17, 3, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            2, 19, 2, 76);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_5'), 
            0, 70, 4, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_139'), 
            1, 34, 2, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            0, 25, 5, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_124'), 
            3, 68, 5, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_38'), 
            4, 11, 5, 30);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            0, 16, 3, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_133'), 
            4, 61, 4, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            1, 7, 4, 27);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            3, 16, 2, 99);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            1, 16, 4, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            3, 40, 1, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            3, 12, 3, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            4, 35, 2, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            1, 21, 2, 89);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_28'), 
            1, 50, 3, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_197'), 
            0, 43, 3, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            1, 17, 4, 59);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            0, 32, 1, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            2, 41, 3, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            2, 6, 2, 39);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            2, 27, 4, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            1, 20, 4, 63);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_115'), 
            1, 25, 4, 96);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_186'), 
            0, 66, 4, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_67'), 
            3, 9, 3, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_56'), 
            0, 53, 4, 98);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            2, 61, 3, 39);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            0, 38, 3, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_40'), 
            3, 3, 4, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_91'), 
            1, 70, 1, 99);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            0, 55, 4, 94);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_6'), 
            2, 1, 4, 76);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            2, 70, 3, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_80'), 
            1, 45, 1, 11);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            0, 47, 1, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            3, 26, 5, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            1, 14, 4, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            0, 54, 2, 25);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            4, 71, 3, 48);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_48'), 
            2, 46, 4, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_169'), 
            3, 31, 4, 84);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            3, 59, 1, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            3, 29, 2, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            2, 17, 5, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_89'), 
            0, 14, 1, 63);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            1, 36, 2, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            0, 58, 5, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            1, 24, 4, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_191'), 
            3, 63, 3, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            0, 25, 1, 62);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            3, 59, 1, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            4, 32, 2, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            3, 18, 5, 78);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_133'), 
            3, 37, 3, 62);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            1, 26, 4, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_58'), 
            4, 9, 5, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_31'), 
            3, 64, 3, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_23'), 
            3, 20, 2, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_170'), 
            4, 54, 3, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_138'), 
            4, 30, 5, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            0, 53, 4, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_107'), 
            1, 63, 1, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            4, 11, 4, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            4, 31, 4, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            2, 49, 5, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_159'), 
            4, 19, 2, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            1, 12, 3, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            3, 15, 5, 36);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_2'), 
            3, 31, 3, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_77'), 
            3, 43, 3, 94);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            3, 37, 1, 42);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            2, 29, 3, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            4, 26, 3, 15);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_13'), 
            3, 2, 5, 60);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            0, 15, 3, 40);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_155'), 
            3, 4, 3, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_113'), 
            4, 50, 4, 37);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            3, 38, 2, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            2, 23, 3, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_98'), 
            1, 59, 4, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            1, 28, 5, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            4, 66, 4, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            1, 8, 4, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_109'), 
            1, 29, 2, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_163'), 
            0, 11, 5, 57);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_70'), 
            4, 18, 2, 6);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            4, 55, 4, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            1, 50, 3, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_74'), 
            1, 14, 5, 74);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            1, 9, 4, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_156'), 
            2, 11, 4, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            3, 63, 2, 73);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_79'), 
            2, 67, 3, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            4, 53, 4, 8);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            0, 39, 4, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_196'), 
            3, 56, 2, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            0, 28, 5, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_96'), 
            4, 39, 5, 40);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_68'), 
            4, 25, 3, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            0, 21, 4, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            0, 10, 3, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            0, 43, 3, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            4, 15, 3, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            1, 48, 4, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_138'), 
            0, 21, 4, 22);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_118'), 
            3, 60, 3, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_193'), 
            4, 50, 4, 6);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            2, 23, 4, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_120'), 
            2, 13, 4, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_50'), 
            3, 69, 1, 11);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            1, 4, 5, 90);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            0, 9, 3, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_175'), 
            4, 35, 3, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            0, 21, 2, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_164'), 
            4, 58, 3, 99);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_180'), 
            2, 18, 5, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_125'), 
            0, 43, 3, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            3, 6, 4, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            1, 67, 1, 16);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_139'), 
            3, 12, 3, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            1, 12, 5, 18);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            0, 66, 4, 62);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            0, 2, 2, 27);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_79'), 
            1, 15, 3, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            2, 23, 2, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            4, 29, 3, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_58'), 
            3, 7, 4, 28);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_26'), 
            3, 28, 4, 9);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_174'), 
            3, 14, 2, 76);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            0, 44, 5, 15);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_4'), 
            3, 30, 4, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_99'), 
            4, 32, 3, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            4, 70, 3, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_39'), 
            1, 6, 4, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            0, 27, 4, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_119'), 
            4, 24, 3, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_29'), 
            2, 34, 3, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_157'), 
            0, 40, 2, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_75'), 
            0, 47, 4, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_116'), 
            4, 24, 3, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            2, 65, 2, 65);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            1, 18, 4, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_175'), 
            4, 44, 5, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            2, 57, 5, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            0, 28, 3, 25);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            2, 71, 2, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_195'), 
            0, 23, 3, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_81'), 
            4, 34, 2, 47);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_126'), 
            4, 11, 5, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_184'), 
            3, 35, 2, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            3, 42, 3, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_21'), 
            3, 28, 3, 11);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_47'), 
            4, 24, 3, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_101'), 
            1, 8, 4, 15);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_187'), 
            4, 53, 3, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            2, 4, 2, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_6'), 
            4, 5, 3, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            4, 49, 3, 49);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_185'), 
            0, 30, 2, 96);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_197'), 
            0, 63, 4, 73);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            0, 47, 4, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_1'), 
            4, 26, 4, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_58'), 
            1, 57, 5, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_124'), 
            2, 37, 5, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            2, 7, 5, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            1, 40, 2, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_162'), 
            1, 39, 2, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_189'), 
            2, 62, 3, 12);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_163'), 
            3, 53, 5, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            0, 4, 5, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            0, 25, 5, 20);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_24'), 
            2, 7, 2, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            1, 28, 5, 81);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_18'), 
            3, 69, 3, 36);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            2, 67, 1, 67);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            0, 20, 3, 1);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            4, 11, 1, 27);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            1, 67, 3, 40);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_174'), 
            4, 7, 3, 97);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            2, 23, 3, 84);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            0, 61, 4, 14);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            3, 71, 5, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            4, 34, 4, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_79'), 
            3, 19, 3, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_27'), 
            0, 58, 4, 6);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_174'), 
            4, 9, 5, 33);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_50'), 
            3, 48, 2, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            3, 41, 3, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-12', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            4, 48, 3, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            0, 45, 1, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_192'), 
            3, 25, 4, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            2, 25, 5, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_181'), 
            4, 19, 2, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_24'), 
            1, 39, 4, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_60'), 
            1, 27, 5, 24);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            0, 63, 5, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            2, 68, 3, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            3, 19, 5, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            1, 28, 3, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_15'), 
            0, 33, 4, 49);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_153'), 
            2, 10, 1, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_199'), 
            2, 30, 1, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_17'), 
            0, 22, 4, 45);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_126'), 
            0, 3, 3, 30);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            3, 48, 3, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            0, 2, 2, 74);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            3, 54, 4, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_176'), 
            3, 6, 1, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            4, 40, 4, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_63'), 
            2, 2, 1, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_117'), 
            2, 2, 2, 36);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_130'), 
            2, 55, 3, 19);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            4, 60, 3, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            3, 6, 3, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-10', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_139'), 
            3, 19, 3, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            0, 27, 5, 38);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            4, 1, 4, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_21'), 
            0, 33, 1, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_18'), 
            4, 40, 3, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_64'), 
            0, 32, 5, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            1, 69, 3, 92);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_110'), 
            2, 17, 1, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_95'), 
            2, 8, 4, 94);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            3, 57, 4, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            1, 42, 4, 62);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            2, 9, 1, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            3, 35, 2, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            1, 71, 4, 24);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_102'), 
            2, 53, 2, 39);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_169'), 
            0, 54, 3, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_136'), 
            4, 25, 3, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_11'), 
            1, 67, 3, 44);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_179'), 
            3, 62, 5, 5);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_88'), 
            1, 55, 4, 55);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            3, 46, 4, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_145'), 
            1, 24, 1, 30);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_76'), 
            3, 46, 2, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_121'), 
            2, 22, 3, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_46'), 
            0, 11, 2, 83);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-15', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            2, 48, 5, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_80'), 
            0, 8, 2, 37);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_54'), 
            2, 39, 3, 91);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_86'), 
            2, 35, 3, 94);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            1, 49, 4, 53);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_148'), 
            4, 46, 2, 30);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            3, 38, 3, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_168'), 
            3, 8, 3, 43);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            3, 54, 5, 7);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_97'), 
            0, 37, 1, 49);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_2'), 
            3, 40, 5, 73);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_33'), 
            3, 34, 4, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_158'), 
            1, 17, 3, 77);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_161'), 
            2, 33, 4, 79);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_77'), 
            3, 47, 1, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-25', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_116'), 
            4, 52, 5, 69);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            3, 9, 3, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            0, 33, 3, 99);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            0, 60, 3, 91);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_194'), 
            0, 21, 1, 27);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_166'), 
            3, 58, 5, 8);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            1, 69, 1, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_90'), 
            4, 10, 4, 84);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_174'), 
            3, 6, 3, 64);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            1, 13, 5, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_143'), 
            1, 65, 2, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-21', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_106'), 
            3, 20, 3, 63);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_119'), 
            3, 57, 3, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-24', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_172'), 
            1, 46, 4, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_49'), 
            1, 8, 1, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_104'), 
            1, 10, 2, 54);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_61'), 
            3, 67, 2, 8);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_195'), 
            1, 11, 4, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_123'), 
            0, 12, 2, 95);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            3, 10, 4, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_9'), 
            0, 25, 2, 30);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_6'), 
            2, 49, 5, 86);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_73'), 
            3, 49, 5, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_103'), 
            2, 11, 3, 76);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_160'), 
            1, 62, 3, 11);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-30', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            1, 36, 2, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_114'), 
            4, 39, 1, 50);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_8'), 
            1, 53, 3, 41);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_72'), 
            2, 56, 4, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_178'), 
            1, 1, 3, 98);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_92'), 
            3, 56, 5, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            1, 4, 3, 80);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            4, 30, 4, 51);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_62'), 
            1, 12, 3, 68);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_111'), 
            2, 35, 3, 87);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_127'), 
            2, 52, 3, 84);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_7'), 
            1, 31, 3, 25);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_84'), 
            2, 68, 3, 30);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_132'), 
            2, 52, 4, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-09-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_134'), 
            4, 7, 5, 11);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_58'), 
            3, 22, 3, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_22'), 
            4, 56, 1, 17);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-09', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_154'), 
            0, 58, 3, 26);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-17', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_127'), 
            4, 64, 3, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-05', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_3'), 
            1, 12, 2, 56);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-11', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_127'), 
            3, 7, 4, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-06', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_41'), 
            1, 55, 5, 48);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-18', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_188'), 
            0, 62, 5, 20);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-08', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_106'), 
            3, 55, 2, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_14'), 
            2, 36, 5, 88);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            4, 24, 4, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_87'), 
            1, 44, 3, 27);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-14', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_12'), 
            0, 17, 3, 2);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_141'), 
            2, 2, 4, 78);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-04', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_25'), 
            4, 13, 3, 4);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-03', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_45'), 
            2, 31, 3, 13);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_122'), 
            4, 28, 3, 35);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_147'), 
            3, 60, 4, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_55'), 
            2, 27, 2, 66);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-26', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_100'), 
            2, 15, 5, 6);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-06-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_173'), 
            2, 33, 4, 31);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-27', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_136'), 
            3, 20, 4, 10);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_119'), 
            0, 42, 1, 21);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_53'), 
            4, 12, 4, 74);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-28', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_183'), 
            2, 23, 2, 23);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_32'), 
            3, 14, 1, 3);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-02', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_51'), 
            0, 25, 3, 32);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-07-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_44'), 
            4, 31, 3, 20);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-08-13', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_82'), 
            3, 54, 4, 74);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_198'), 
            4, 5, 1, 29);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-04-23', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_146'), 
            2, 13, 3, 52);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_150'), 
            0, 28, 2, 46);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_37'), 
            3, 43, 5, 34);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-01-01', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_96'), 
            0, 47, 4, 84);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-03-31', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_56'), 
            2, 71, 4, 61);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_105'), 
            0, 38, 3, 72);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-16', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_59'), 
            0, 67, 1, 71);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-02-07', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_131'), 
            1, 62, 5, 70);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-10-20', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_156'), 
            0, 39, 3, 11);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-05-19', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_35'), 
            4, 37, 3, 82);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-12-22', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_189'), 
            3, 8, 4, 93);
    
    INSERT INTO Soporte (Fecha, Cliente_ID, Casos_Soporte, Tiempo_Resolucion_Horas, Satisfaccion_Cliente, Uso_Software_Horas)
    VALUES ('2023-11-29', 
            (SELECT Cliente_ID FROM Clientes WHERE Nombre='Cliente_93'), 
            1, 52, 1, 89);
    