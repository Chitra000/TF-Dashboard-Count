resource "newrelic_one_dashboard" "exampledash" {
  count       = length(var.dashboard)
  name        = var.dashboard[count.index].name
  permissions = var.dashboard[count.index].permissions

  page {
    name = var.dashboard[count.index].page_name


    widget_billboard {

      title  = var.dashboard[count.index].title
      row    = var.dashboard[count.index].row
      column = var.dashboard[count.index].column
      width  = var.dashboard[count.index].width
      height = var.dashboard[count.index].height

      nrql_query {
        query = var.dashboard[count.index].query
      }
    }

    # widget_bar {
    #   title  = var.page.title2
    #   row    = var.page.row2
    #   column = var.page.column2
    #   width  = var.page.width2
    #   height = var.page.height2

    #   nrql_query {
    #     query = var.page.query2
    #   }
    # }

    # widget_line {
    #   title  = var.page.title3
    #   row    = var.page.row3
    #   column = var.page.column3
    #   width  = var.page.width3
    #   height = var.page.height3

    #   nrql_query {
    #     query = var.page.query3
    #   }
    # }
    # widget_billboard {
    #   title  = var.page.title4
    #   row    = var.page.row4
    #   column = var.page.column4
    #   width  = var.page.width4
    #   height = var.page.height4

    #   nrql_query {
    #     query = var.page.query4
    #   }
    # }
    # widget_bar {
    #   title  = var.page.title5
    #   row    = var.page.row5
    #   column = var.page.column5
    #   width  = var.page.width5
    #   height = var.page.height5

    #   nrql_query {
    #     query = var.page.query5
    #   }
    # }

    # widget_line {
    #   title  = var.page.title6
    #   row    = var.page.row6
    #   column = var.page.column6
    #   width  = var.page.width6
    #   height = var.page.height6

    #   nrql_query {
    #     query = var.page.query6
    #   }
    # }
    # widget_line {
    #   title  = var.page.title7
    #   row    = var.page.row7
    #   column = var.page.column7
    #   width  = var.page.width7
    #   height = var.page.height7

    #   nrql_query {
    #     query = var.page.query7
    #   }
    # }
  }

}
