-- CreateTable
CREATE TABLE "departamento" (
    "codigo" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "presupuesto" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "departamento_pkey" PRIMARY KEY ("codigo")
);

-- CreateTable
CREATE TABLE "empleado" (
    "codigo" SERIAL NOT NULL,
    "nit" TEXT NOT NULL,
    "nombre" TEXT NOT NULL,
    "apellido1" TEXT NOT NULL,
    "apellido2" TEXT NOT NULL,
    "codigoId" INTEGER NOT NULL,

    CONSTRAINT "empleado_pkey" PRIMARY KEY ("codigo")
);

-- AddForeignKey
ALTER TABLE "empleado" ADD CONSTRAINT "empleado_codigoId_fkey" FOREIGN KEY ("codigoId") REFERENCES "departamento"("codigo") ON DELETE RESTRICT ON UPDATE CASCADE;
