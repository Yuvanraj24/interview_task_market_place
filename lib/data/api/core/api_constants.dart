class ApiConstants {

  /// Api Base URL
  static const String baseUrl = "https://borc-template.coologeex.com/api";

  /// Api - Endpoints

  // Authentication
  static const String login = "/merchant/check-user";
  static const String logout = "/merchant/logout";

  // Store
  static const String  storeItemsList = "/merchant/merchant-item-list";

  // Cart
  static const String addToCart = "/merchant/merchant-add-to-cart";
  static const String bulkAddToCart = "/merchant/merchant-confirm-order";
  static const String updateCart = "/merchant/merchant-update-cart";
  static const String cartList = "/merchant/merchant-cart-list";
  static const String deleteCart = "/merchant/merchant-delete-cart";

  // Orders
  static const String orderHistoryList = "/merchant/merchant-order-history";
  static const String orderStatusChange = "/merchant/merchant-change-order-status";
  static const String orderDetail = "/show-invoice-pdf";
  static const String placeOrder = "/merchant/merchant-place-order-item";

  // Notification
  static const String notificationList = "/merchant/merchant-customer-notification-list";

  // Customers
  static const String addCustomer = "/merchant/merchant-customer";
  static const String customerList = "/merchant/merchant-customer-list";

  //Address
  static const String createCustomerAddress = "/merchant/merchant-customer-delivery-address";
  static const String addressList = "/merchant/merchant-delivery-address-list";
  static const String findDeliveryDistance = "";

  // App Info
  static const String faqList = "/customer-faq";

  // Dashboard
  static const String dashboard = "/merchant/merchant-dashboard";

  // Profile
  static const String getProfile = "/merchant/merchant-profile";

}

class APiEndPointsConstants {

}

class APiConstantsQueryWords {
  static const String customerId = "customer_id";
  static const String orderId = "order_id";
  static const String cartId = "cart_id";
  static const String phoneNumber = "phone_number";
  static const String itemName = "item_name";
  static const String barcode = "barcode";
  static const String appType = "app_type";

}