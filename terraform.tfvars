dashboard = [
  {
    name        = "Count Dashboard 1"
    permissions = "public_read_only"
    page_name   = "New Relic Terraform Dashboard"
    title      = "Requests per minute"
    row        = 1
    column     = 1
    width      = 4
    height     = 6
    query      = "FROM Transaction SELECT rate(count(*), 1 minute)"
  },

  {
    name        = "Count Dashboard 2"
    permissions = "public_read_only"
    page_name   = "New Relic Terraform Dashboard"
    title      = "Requests per minute"
    row        = 1
    column     = 1
    width      = 4
    height     = 6
    query      = "FROM Transaction SELECT rate(count(*), 1 minute)"
  }

]


#multiple widgets
# dashboard_name = "count-dashboard"
# permissions    = "public_read_only"
# page = {
#     page_name = "count-dashboard-page1"
#     title = ["Requests per minute", "Disk Usage"]
#     row = [1,1]
#     column = [1,5]
#     width = [4,4]
#     height = [3,3]
#     query = ["FROM Transaction SELECT rate(count(*), 1 minute)","SELECT latest(diskUsedPercent) AS `Used %` FROM StorageSample WHERE (entityGuid = 'NDM2NDEzM3xJTkZSQXxOQXwyNDk3MTY5OTg0OTMxNjk2NjU3') FACET device LIMIT MAX"]
# }
