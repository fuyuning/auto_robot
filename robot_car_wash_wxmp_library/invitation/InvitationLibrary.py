from robot_car_wash_wxmp_library.common import CommonLibrary


class InvitationLibrary(CommonLibrary):
    def post_user_invitation_accept(self, **kwargs):
        url = "{SERVER_DOMAIN}/user/invitation/accept".format(
            SERVER_DOMAIN=self.SERVER_DOMAIN)
        data = {}
        for k, v in kwargs.items():
            if k in ("invite_code", "mobile"):
                data[k] = v
        return self.client.post(url, json=data)

    def get_user_invitations(self, **kwargs):
        url = "{SERVER_DOMAIN}/user/invitations".format(
            SERVER_DOMAIN=self.SERVER_DOMAIN)
        data = {}
        for k, v in kwargs.items():
            if k in ("is_arrived", "page_num", "page_size"):
                data[k] = v
        return self.client.get(url, params=data)

    def get_user_invitations_count(self):
        url = "{SERVER_DOMAIN}/user/invitations/count".format(
            SERVER_DOMAIN=self.SERVER_DOMAIN)
        return self.client.get(url)

    def get_user_invite_code(self, **kwargs):
        url = "{SERVER_DOMAIN}/user/invite_code".format(
            SERVER_DOMAIN=self.SERVER_DOMAIN)
        data = {}
        for k, v in kwargs.items():
            if k in ("mobile", ):
                data[k] = v
        return self.client.get(url, params=data)

