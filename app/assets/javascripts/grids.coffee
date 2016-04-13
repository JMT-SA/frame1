loadGrid = (grid, gridOptions) ->
  url = grid.getAttribute('data-gridurl')
  httpRequest = new XMLHttpRequest()
  httpRequest.open 'GET', url
  httpRequest.send()
  httpRequest.onreadystatechange = ->
    if httpRequest.readyState == 4 && httpRequest.status == 200
      httpResult = JSON.parse(httpRequest.responseText)
      gridOptions.api.setColumnDefs(httpResult.columnDefs)
      gridOptions.api.setRowData(httpResult.rowDefs)


document.addEventListener "DOMContentLoaded", ->
  grids = document.querySelectorAll('[data-grid]')
  for grid in grids
    # optName = grid.getAttribute('id') + 'GridOptions'
    # gridOptions = window[optName]
    gridOptions =
      columnDefs: null
      rowDefs: null

    new agGrid.Grid(grid, gridOptions)
    loadGrid(grid, gridOptions)

