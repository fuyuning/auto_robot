from robot_car_wash_server_library.common import CommonLibrary


class WashAbleGroupLibrary(CommonLibrary):
    def get_admin_wash_able_groups(self, **kwargs):
        url = "{SERVER_DOMAIN}/admin/wash_able_groups".format(
            SERVER_DOMAIN=self.SERVER_DOMAIN)
        data = {}
        for k, v in kwargs.items():
            if k in ("page_num", "page_size"):
                data[k] = v
        return self.client.get(url, params=data)

    def get_admin_wash_able_groups_by_wash_auto_group_id(self, wash_auto_group_id):
        url = "{SERVER_DOMAIN}/admin/wash_able_groups/{wash_auto_group_id}".format(
            SERVER_DOMAIN=self.SERVER_DOMAIN, wash_auto_group_id=wash_auto_group_id)
        return self.client.get(url)

    def put_admin_wash_able_groups_by_wash_able_group_id(self, wash_able_group_id, **kwargs):
        url = "{SERVER_DOMAIN}/admin/wash_able_groups/{wash_able_group_id}".format(
            SERVER_DOMAIN=self.SERVER_DOMAIN, wash_able_group_id=wash_able_group_id)
        data = {}
        for k, v in kwargs.items():
            if k in ("name", "group_time_range", "expect_time", "expect_day", "is_diff_car_type", "people_num", "people_day_num", "service_groups", "status", "start_time", "end_time", "day_in_week", "car_washer_ids", "spec_people_day_num", "time_loop_set", "auto_group", "end_time_found"):
                data[k] = v
        return self.client.put(url, json=data)

    def patch_admin_wash_able_groups_by_wash_able_group_id(self, wash_able_group_id, **kwargs):
        url = "{SERVER_DOMAIN}/admin/wash_able_groups/{wash_able_group_id}".format(
            SERVER_DOMAIN=self.SERVER_DOMAIN, wash_able_group_id=wash_able_group_id)
        data = {}
        for k, v in kwargs.items():
            if k in ("spec_people_day_num", ):
                data[k] = v
        return self.client.patch(url, json=data)

