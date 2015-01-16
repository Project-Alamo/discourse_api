module DiscourseApi
  module API
    module ApiKey
      def api
        response = get("/admin/api.json")
        response.body
      end

      def generate_api_key(user_id)
        response = post("/admin/users/#{user_id}/generate_api_key.json")
      end

      def revoke_api_key(user_id)
        response = delete("/admin/users/#{user_id}/revoke_api_key.json")
      end

      def generate_master_key
        response = post("/admin/api/key")
      end
    end
  end
end