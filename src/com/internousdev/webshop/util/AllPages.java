package com.internousdev.webshop.util;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.webshop.dto.ItemDTO;


/** 渡されたリストに対してページネーションを行うクラス
	* @author RYO MAEDA
	*@since 2017/05/06
	*@version 1.0
	*/

	public class AllPages {

		/**
		 * リストをページネーションして本の形に変換し、jspで表示するために格納する
		 */


		/**
		 * 渡されたリストを1ページにcount個までオブジェクトが掲載された本の形に変換して返す
		 * @param itemDTOList DTOが格納されたArrayList
		 * @param count 1ページあたりに掲載されるオブジェクトの個数
		 * @return displayBook
		 */
		public ArrayList<PageObject> paginate(List<ItemDTO> itemDTOList, int count) {

			ArrayList<PageObject> displayBook =new ArrayList<PageObject>();
			int itemCount = count;
			int index = 0;
			int maxPages = 0;

			if((itemDTOList.size() % count) == 0) {
				maxPages = itemDTOList.size() / count;
			} else {
				maxPages = (itemDTOList.size() / count) + 1;
			}



			for(int i = 0; i < maxPages; i++) {
				PageObject page = new PageObject();

				for(int j = index; j < itemCount; j++) {
					if(itemDTOList.size() == j) {
						break;
					}
					page.addPaginatedList(itemDTOList,j);
				}


				page.setPageId(i);
				displayBook.add(page);

				index += count;
				itemCount += count;
			}
			return displayBook;
		}

		/**
		 * 渡されたリスト数と1ページあたりに掲載するオブジェクト数から総ページ数を返す
		 * @param itemDTOList DTOが格納されたArrayList
		 * @param count 1ページあたりに掲載されるオブジェクトの個数
		 * @return maxPages
		 */
		public int getMaxPage(List<ItemDTO> itemDTOList, int count) {

			int maxPages = 0;

			if((itemDTOList.size() % count) == 0) {
				maxPages = itemDTOList.size() / count;
			} else {
				maxPages = (itemDTOList.size() / count) + 1;
			}


			return maxPages;
		}

		/**
		 * ページネーションが必要なリストのために、1ページごとの情報を保持するためのクラス
		 * @author RYO MAEDA
		 * @since 2017/06/05
		 * @version 1.0
		 */
		public class PageObject {

			/**
			 * ページを識別するID
			 */
			private int pageId;

			/**
			 * 当該1ページに掲載される商品のリスト
			 */
			private ArrayList<ItemDTO> paginatedItemList = new ArrayList<ItemDTO>();




			/**
			 * ページネートされた商品リストを取得するメソッド
			 * @return  paginatedItemList
			 */
			public ArrayList<ItemDTO> getPaginatedList() {
					return paginatedItemList;
					}

			/**
			 * ページネートされた商品リストを格納するメソッド
			 * @param list ページネーションが完了した1ページごとのリスト
			 */
			public void setPaginatedList(ArrayList<ItemDTO> list) {
					paginatedItemList = list;
			}

			/**
			 * AllPagesクラスのpaginate()において使われる
			 * これによってDTOのインスタンスが当該ページにひとつずつ格納されていく
			 * @param itemDTOList これからページネーション処理を行うリスト
			 * @param j 繰り返し用変数
			 */
			public void addPaginatedList(List<ItemDTO> itemDTOList, int j) {
					paginatedItemList.add((ItemDTO)itemDTOList.get(j));
					}



			/**
			 * ページID取得メソッド
			 * @return pageId
			 */
			public int getPageId() {
				return pageId;
			}

			/**
			 * ページID格納メソッド
			 * @param pageId セットする pageId
			 */
			public void setPageId(int pageId) {
				this.pageId = pageId;
			}
		}

}