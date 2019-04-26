from robot_car_wash_app_library.common import CommonLibrary


class CarWasherOrderStatisticLibrary(CommonLibrary):
    def get_car_washers_order_statistic(self):
        url = "{SERVER_DOMAIN}/car_wash/car_washers/order_statistic".format(
            SERVER_DOMAIN=self.SERVER_DOMAIN)
        return self.client.get(url)

