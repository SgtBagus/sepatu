	       <input type="hidden" name="ids" value="<?= $data['id'] ?>">
	       <table class="table table-borderd table-striped">
				<tr>
					<td>Cost center code</td>
					<td><input name="dt[code]" type="text" class="form-control" value="<?= $data['code'] ?>" /></td>
				</tr>
				
				<tr>
					<td>Name of Site</td>
					<td><input name="dt[name]" type="text" class="form-control" value="<?= $data['name'] ?>" <?php if($data['id']==1){ echo "readonly=''"; } ?>/></td>
				</tr>
				<tr>
					<td>Site</td>
					<td><input name="dt[site]" type="text" class="form-control" value="<?= $data['site'] ?>" <?php if($data['id']==1){ echo "readonly=''"; } ?>/></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<?php 
							if(@$image['dir']==""){
								$file ="http://www.dbsmfg.com/img/default.gif";
							}else{
								$file = base_url().$image['dir'];
							}
						?>
						<img src="<?= $file ?>" class="img-responsive" width="100" >
					</td>
				</tr>
				<tr>
					<td>Photo</td>
					<td><input name="gambar" type="file" class="form-control" accept="image/*"/></td>
				</tr>
				
			</table>