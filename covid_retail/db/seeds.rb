require 'faker'

# tipo_pago = [
#     {name: 'Efectivo'},
#     {name: 'Debito'},
#     {name: 'Crédito'}
# ]
#
# tipo_cliente = [
#     {name: 'Minorista'},
#     {name: 'Mayorista'}
# ]
# 
# PaymentType.create(tipo_pago)
# ClientType.create(tipo_cliente)

# ids_tipos_de_clientes = ClientType.pluck(:id)
# 
# 10.times do 
# 
#     nombre = Faker::Name.name
#     email = Faker::Internet.email
#     tipo_id = ids_tipos_de_clientes.sample
# 
#     tipo = ClientType.find(tipo_id)
# 
#     Client.create(name: nombre, email: email, client_type: tipo)
# 
# end

# 25.times do
# 
#     nombre = Faker::Commerce.product_name
#     precio = Faker::Commerce.price(range: 1000..25000, as_string: false)
#     descripcion = Faker::Food.description
#     cantidad = rand(15) + 1
# 
#     Product.create(name: nombre, price: precio, description: descripcion, quantity: cantidad)
# 
# end 


# ids_clientes = Client.pluck(:id)
# ids_productos = Product.pluck(:id)
# ids_tipo_pago = PaymentType.pluck(:id)
# 
# 
# 5.times do 
# 
#     muestra_id_cliente = ids_clientes.sample
#     muestra_id_producto = ids_productos.sample
#     muestra_id_tpago = ids_tipo_pago.sample
# 
#     id_cliente = Client.find(muestra_id_cliente)
#     id_producto = Product.find(muestra_id_producto)
#     id_tpago = PaymentType.find(muestra_id_tpago)
# 
#     monto_total = id_producto.price
#     fecha_orden = Faker::Date.in_date_period(year: 2022)
# 
#     Order.create( 
#         total_payment: monto_total, 
#         order_date: fecha_orden, 
#         product: id_producto, 
#         client: id_cliente, 
#         payment_type: id_tpago
#     )
# 
# end

# User.create(
#     email: "admin@admin.cl",
#     password: "password",
#     role: 0
# )