Deface::Override.new(
	:virtual_path => "spree/products/_product",
	:name => "testing",
	:insert_after => "[itemprop='price']",
	:text => "<span>Points</span>"
	)

Deface::Override.new(
	:virtual_path => "spree/products/_cart_form",
	:name => "testing1",
	:replace => "[itemprop='priceCurrency']",
	:text => "<span>Points</span>"
	)

Deface::Override.new(
	:virtual_path => "spree/checkout/_summary",
	:name => "testingq",
	:insert_after => "span#summary-order-total",
	:text => "<span>&nbsp;Points</span>"
	)

# Deface::Override.new(
# 	:virtual_path => "spree/shared/_header",
#     :name => "logo",
#     :replace_contents => "#logo",
#     :text => "<%= image_tag 'spree/store.png' %>"
# )

Deface::Override.new(
	:virtual_path => "spree/address/_form",
    :name => "fields",
    :insert_after => "erb[loud]:contains('text_field :lastname')",
    :text => '<p class="form-group" id=<%="#{address_id}gender" %>>
      <%= form.label :gender %>
      <%= form.select :gender, options_for_select([["Select one", ""], "MALE", "FEMALE"]),{}, class: "form-control" %>
    </p>'
)

Deface::Override.new(
	:virtual_path => "spree/address/_form",
    :name => "fields1",
    :insert_after => "erb[loud]:contains('text_field :city')",
    :text => '<p class="form-group" id=<%="#{address_id}neighborhood" %>>
      <%= form.label :neighborhood %>
      <%= form.text_field :neighborhood, class: "form-control" %>
    </p>'
)

Deface::Override.new(
	:virtual_path => "spree/checkout/_summary",
	:name => "testing2",
	:replace => "[data-hook='shipping-total']",
	:text => "<td data-hook='shipping-total' data-currency='<%= Money::Currency.find(order.currency).symbol %>' thousands-separator='<%= shipping_total.to_s %>' decimal-mark='<%= shipping_total.to_s %>'><%= shipping_total.to_html %></td>"
)

