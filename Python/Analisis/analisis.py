import pandas as pd
import matplotlib.pyplot as plt

# Cargar dataset
df = pd.read_csv("Python/Analisis/ventas.csv", parse_dates=["fecha"])

# 1. Ventas totales por producto
ventas_producto = df.groupby("producto")["cantidad"].sum()
ventas_producto.plot(kind="bar", title="Ventas por producto")
plt.show()

# 2. Ingresos por producto
df["ingreso"] = df["cantidad"] * df["precio_unitario"]
ingresos = df.groupby("producto")["ingreso"].sum()
ingresos.plot(kind="pie", autopct="%1.1f%%", title="Ingresos por producto")
plt.ylabel("")  # quita texto extra
plt.show()

# 3. Tendencia de ventas en el tiempo
ventas_fecha = df.groupby("fecha")["cantidad"].sum()
ventas_fecha.plot(kind="line", marker="o", title="Ventas por día")
plt.show()
