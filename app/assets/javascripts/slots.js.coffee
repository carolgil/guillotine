$(document).ready ->
  $(".chzn-select").chosen()
  $(".chzn-select").trigger("liszt:updated")

  $(document).on("change", "#slot_show", ->
    if $("#slot_show").val() == "new"
      $("#choose_or_new_show_div").replaceWith("""
        <div class="flex3 flexcontainer" id="choose_or_new_show_div">
          <div class="flex3">
            <label for="slot_name">Name</label><br>
            <input id="slot_name" name="slot[name]" type="text" autofocus="autofocus">
          </div>
          <div class="flex2">
            <label for="slot_dj">DJ</label><br>
            <input id="slot_dj" name="slot[dj]" type="text">
          </div>
        </div>
      """)
  )
