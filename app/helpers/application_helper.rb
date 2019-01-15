module ApplicationHelper
  def default_meta_tags
    {
      title:       "YEApp",
      description: "description",
      keywords:    "rails,seo,meta-tags",
      #icon: [
        #{ href: image_url('favicon.ico') },
        #{ href: image_url('sample.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      #],
      noindex: ! Rails.env.production?, # production環境以外はnoindex
	    canonical: request.url,  # 優先されるurl
      charset: "UTF-8",

      og: {
        title: :title,
        description: :description,
        type: "website",
        url: request.original_url,
        image: image_url("スクリーンショット.png"),
        site_name: "site name",
        locale: "ja_JP"
      },
      twitter: {
        card: 'summary'
        image: image_url("スクリーンショット.png")
	  },
      fb: {
        app_id: '465581603975903'    #ご自身のfacebookのapplication IDを設定
      }
    }
  end
end
