class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    true

    BubbleWrap::HTTP.get("http://google.com") do |response|
      p response.body.to_str
    end

    BubbleWrap::HTTP.get("http://bing.com/search", payload:{q:"hoge"}) do |response|
      p response.body.to_str
    end

    BubbleWrap::HTTP.get("http://google.com") do |response|
      p response.body.to_str
    end

  end
end
